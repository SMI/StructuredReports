#!/usr/bin/env python3
# Combine SemEHR output along with an anonymisation step to produce marked-up HTML.
# Also output Neo4J Cypher commands to construct a graph database.
# Read the SemEHR output files,
#  extract the locations of the words which have been tagged with meanings
# Read the original source text files,
#  run SpaCy to find the locations of the words which are named entities,
# Combine the two sets of results into one sorted list
# Pass the list to the SpaCy visualiser to produce HTML
import ast
import glob
import json
import os
from operator import itemgetter # for sorting a list of dicts by value

import spacy
import yaml
from spacy import displacy

# Configuration
#   the default spaCy model, can be changed in the default.yaml file
default_spacy_model = 'en_core_web_sm'
debug = True

# ---------------------------------------------------------------------
# Read the YAML configuration

cfg_file = 'default.yaml'

with open(cfg_file, 'r') as ymlfile:
    cfg_dict = yaml.load(ymlfile)
    # Descend into the section specifically for our programs
    cfg_dict = cfg_dict['NLPOptions']


# ---------------------------------------------------------------------

# input_dir - we need to read the original text so we can replace the named entities and produce HTML
# output_dir - we read the tagged json files from here
semehr_input_dir = os.path.join(cfg_dict['SemEHRDir'], cfg_dict['SemEHRInputDir'])
semehr_output_dir = os.path.join(cfg_dict['SemEHRDir'], cfg_dict['SemEHROutputDir'])

# which NLP model for NER we need
spaCy_model = cfg_dict.get('SpaCyModel', default_spacy_model)

# fake value of null so we can 'eval' a string
null=0

# Initialise spaCy
nlp = spacy.load(spaCy_model)  # XXX should only do this once
# SpaCy's "ents" is a list of start,end,label dictionaries

# Line number is maintained across all input files
line_number = 0

# The graph database commands are written to a single file
cy_fd = open('sample.cy', 'w+')

for input_file in glob.glob(os.path.join(semehr_output_dir, '*')):

    # Ignore output files!
    if '.html' in input_file:
        continue
    if '.json' in input_file:
        continue

    if debug:
        print("Reading %s" % input_file)
    fd=open(os.path.join(semehr_output_dir, input_file), 'r')

    # Each line in the file is a unique input file
    # There are several lines, typically 4 input files per output file.
    for line in fd:

        # The line number is only used as a fake patient_id until we can get the real id
        line_number += 1

        # Line is a dumped Python data structure (not JSON) so eval it.
        # Have to use eval and not ast.literal_eval (which would be safer) because of the embedded null
        # so if we define 'null' above then eval works but literal_eval still fails.
        # XXX Could do a string replace before literal_eval to solve this.
        line_dict=eval(line)
        #print("=====================================================================")
        #print(line_dict)

        # The content is a dictionary containing:
        #   annotations, docId, brcId
        # docId is the original filename
        # annotations is a three-element array [ Mention, Phenotype, Sentences ]
        #   each of those is a list of mentions, phenotypes, sentences
        #   being dictionaries containing id, type, startNode, endNode, features

        # Read the original text and anonymise it using spaCy
        # XXX need to train SpaCy with the names we extracted from the original docs
        # or ensure that has been done into a custom model.
        original_filename = os.path.join(semehr_input_dir, line_dict['docId'])
        if debug:
            print("  Reading %s" % original_filename)
        with open(original_filename, 'r') as orig_fd:
            original_text = orig_fd.read()

            # remove the first line which contains the id
            # Can't, it messes up the offsets (unless you want to adjust them afterwards)
            ###original_text = original_text[original_text.find('\n')+1:]

            # Parse using SpaCy NLP
            original_text_entities = nlp(original_text)

            # We now have: original_text_entities.ents
            ###doc = { 'text': original_text, 'ents': original_text_entities.ents, 'title': None }
            #if len(original_text_entities.ents) > 0:
            #    need_to_anon = False
            #    for entity in original_text_entities.ents:
            #        #print("Entity: '%s'" % (entity.label_))
            #        if entity.label_ == 'PERSON' or entity.label_ == 'ORG':
            #            need_to_anon = True
            #    if need_to_anon:
            #        html=displacy.render(original_text_entities, style='ent')#, manual=True)
            #        #print("Original text: '%s'" % original_text)
            #        #print("EntitiesDoc  : '%s'" % original_text_entities)
            #        #print("EntitiesNum:    %d" % len(original_text_entities.ents))
            #        #print("HTML         : '%s'" % html)

        semehr_ents = []

        annotation_list = line_dict['annotations']
        if len(annotation_list) >= 3:
            mention_list = annotation_list[0]
            phenotype_list = annotation_list[1]
            sentence_list = annotation_list[2]

            # Only interested in mentions (Note: list may be empty)
            #
            for item in mention_list:
                #print("------------------------")
                #print('Type     %s' % item['type'])
                #print('Chars    %s to %s' % (item['startNode']['offset'], item['endNode']['offset']))
                #print('Features %s' % item['features']['STY'])
                # Create a dictionary in spaCy's "ents" format: start,end,label
                # 'features': {'VOCABS': 'FMA', 'Experiencer': 'Patient', 'Negation': 'Affirmed', 'PREF': 'Gastric wall', 'STY': 'Body Part, Organ, or Organ Component', 'TUI': 'T023', 'Temporality': 'Recent', 'inst': 'C0227224', 'language': '', 'string_orig': 'gastric wall', 'inst_full': 'http://linkedlifedata.com/resource/umls/id/C0227224'}}

                # Define a function to return the given attribute of the feature, or empty string if not found
                def get_feature_attr(feature_attr):
                    return str(item['features'][feature_attr]) if feature_attr in item['features'] else ''

                item_ent = {
                    'start': item['startNode']['offset'],
                    'end'  : item['endNode']['offset'],
                    'label': get_feature_attr('STY') + ' (' +
                        get_feature_attr('Experiencer') + ', ' +
                        get_feature_attr('Negation') + ', ' +
                        get_feature_attr('Temporality') +
                        ')',
                }
                semehr_ents.append(item_ent)

                # Map from the concept name (as appears in the STY field of SemEHR results)
                # to a Node Label and a Node Relationship
                # The label is the 'type' of the node and
                # the relationship is how it relates to the experiencer (patient)
                concept_to_relationship_map = {
                    'Acquired Abnormality':    { 'label': 'Condition', 'rel': 'HAS_CONDITION'},
                    'Anatomical Abnormality':  { 'label': 'Condition', 'rel': 'HAS_CONDITION'},
                    'Antibiotic':              { 'label': 'Drug', 'rel': 'IS_ADMINISTERED'},
                    'Body Location or Region': { 'label': 'Body', 'rel': 'HAS_BODY'},
                    'Body Part, Organ, or Organ Component': { 'label': 'Body', 'rel': 'HAS_BODY'},
                    'Body Space or Junction':  { 'label': 'Body', 'rel': 'HAS_BODY'},
                    'Body System':             { 'label': 'Body', 'rel': 'HAS_BODY'},
                    'Clinical Attribute':      { 'label': 'Clinical', 'rel': 'IS_CLINICAL'},  # XXX ? (eg. "age")
                    'Clinical Drug':           { 'label': 'Drug', 'rel': 'IS_ADMINISTERED'},
                    'Congenital Abnormality':  { 'label': 'Condition', 'rel': 'HAS_CONDITION'},
                    'Diagnostic Procedure':    { 'label': 'Treatment', 'rel': 'HAS_TREATMENT'},
                    'Disease or Syndrome':     { 'label': 'Condition', 'rel': 'HAS_CONDITION'},
                    'Disease or Syndrome,Anatomical Abnormality': { 'label': 'Condition', 'rel': 'HAS_CONDITION'},
                    'Finding':                 { 'label': 'Condition', 'rel': 'HAS_FINDING'},  # XXX ? (eg. "intact")
                    'Health Care Activity':    { 'label': 'Treatment', 'rel': 'HAS_TREATMENT'},
                    'Health Care Related Organization': { 'label': 'Org', 'rel': 'AT_LOCATION'},
                    'Individual Behavior':     { 'label': 'Condition', 'rel': 'IS_BEHAVIOUR'},  # XXX ? (eg. "impression")
                    'Injury or Poisoning':     { 'label': 'Condition', 'rel': 'HAS_CONDITION'},
                    'Laboratory Procedure':    { 'label': 'Treatment', 'rel': 'HAS_TREATMENT'},
                    'Mental Process':          { 'label': 'Condition', 'rel': 'IS_MENTALPROCESS'}, # XXX ?
                    'Neoplastic Process':      { 'label': 'Condition', 'rel': 'IS_NEOPLASTIC'}, # XXX ?
                    'Pathologic Function':     { 'label': 'Condition', 'rel': 'IS_PATHOLOGIC'}, # XXX ?
                    'Pharmacologic Substance': { 'label': 'Drug', 'rel': 'HAS_PHARMACOLOGIC'}, # XXX ?
                    'Research Activity':       { 'label': 'Treatment', 'rel': 'IS_RESEARCH'},  # XXX ? (eg. "study")
                    'Sign or Symptom':         { 'label': 'Condition', 'rel': 'HAS_CONDITION'},
                    'Temporal Concept':        { 'label': 'Temporal', 'rel': 'IS_TEMPORAL'},  # XXX ? (eg. "old" or "year")
                    'Therapeutic or Preventive Procedure': { 'label': 'Treatment', 'rel': 'HAS_TREATMENT'},
                    'Tissue':                  { 'label': 'Body', 'rel': 'HAS_BODY'},
                }

                # For a given concept return the relationship
                def concept_to_relationship(concept):
                    if concept in concept_to_relationship_map:
                        mapping = concept_to_relationship_map[concept]
                        return mapping['rel']
                    # default value if not matched:
                    return 'RELATED'
                    #return concept_to_relationship_map.get(concept, 'RELATED')

                # For a given concept return the label
                def concept_to_label(concept):
                    if concept in concept_to_relationship_map:
                        mapping = concept_to_relationship_map[concept]
                        return mapping['label']
                    # default value if not matched:
                    return 'THING'
                    #return concept_to_relationship_map.get(concept, 'RELATED')

                # Create the Graph database entity for this word/phrase.
                # Lookup the STY to find out what kind of relationship to make
                # and lookup Experiencer to find out to whom it's related.
                # Create a node for the experiencer
                # Create a node for the concept
                patient_id = 'FAKE_ID-%d' % line_number
                feat_experiencer = get_feature_attr('Experiencer')
                feat_PREF = get_feature_attr('PREF') # concept eg. "Ectasia"
                feat_STY = get_feature_attr('STY') # description eg. "Pathologic Function"
                feat_Temporality = get_feature_attr('Temporality')
                feat_Negation = get_feature_attr('Negation')
                # use inst or TUI as IDs for the concept
                feat_inst = get_feature_attr('inst') # umls id, eg. C0012359
                feat_TUI = get_feature_attr('TUI') # semanticnetwork id, eg. T046
                concept_id = feat_inst
                if feat_experiencer == 'Patient':
                   print("MERGE (node:Person {id: '%s'}); " % (patient_id), file=cy_fd)
                else:
                    print("ERROR: Experiencer is not Patient: %s" % feat_experiencer, file=cy_fd)
                relationship = concept_to_relationship(feat_STY)
                label = concept_to_label(feat_STY)
                if not relationship:
                    print("ERROR: No mapping from %s to relationship" % feat_STY)
                print("MERGE (node:%s {id: '%s'}) SET node.PREF='%s' SET node.STY='%s'; " % (label, concept_id, feat_PREF, feat_STY), file=cy_fd)
                print("MATCH (i:Person {id: '%s'}) " % (patient_id), file=cy_fd)
                print("MATCH (j:%s {id: '%s'}) " % (label, concept_id), file=cy_fd)
                print("MERGE (i)-[r:%s]->(j); " % (relationship), file=cy_fd)
        else:
            print("ERROR: does not contain a 3-element array: %s" % line_dict)

        # Now merge the two dictionaries and render to HTML
        new_ents = []
        for ent in original_text_entities.ents:
            #print("ENTITY %d..%d '%s' / '%s'" % (ent.start_char, ent.end_char, ent, ent.label_))
            item_ent = {
                'start' : ent.start_char,
                'end'   : ent.end_char,
                'label' : ent.label_,
            }
            new_ents.append(item_ent)

        # Append (called extend in Python), without sorting yet
        new_ents.extend(semehr_ents)

        # Create a new dict for SpaCy's HTML renderer
        # containing text, title and ents
        render_dict = { 'text' : original_text, 'title' : None}
        render_dict['ents'] = sorted(new_ents, key=itemgetter('start'))

        # Convert to HTML
        html = displacy.render(render_dict, style='ent', manual=True)

        # Write HTML file output to separate file per input line
        output_html_filename = os.path.join(semehr_output_dir, os.path.basename(original_filename) + '.html')
        print("    Writing %s" % output_html_filename)
        html_fd=open(output_html_filename, 'w')
        html_fd.write(html)
        html_fd.close()

    fd.close()


# {"annotations":[[{"id":90,"type":"Mention","startNode":{"id":84,"offset":59},"endNode":{"id":85,"offset":66},"features":{"PREF":"History","Experiencer":"Patient","Negation":"Affirmed","STY":"Finding","TUI":"T033","Temporality":"historical","VOCABS":"CHV,CHV","inst":"C0262926","tui_full":"http://linkedlifedata.com/resource/semanticnetwork/id/T033","language":"","string_orig":"history","inst_full":"http://linkedlifedata.com/resource/umls/id/C0262926"}},{"id":91,"type":"Mention","startNode":{"id":80,"offset":69},"endNode":{"id":81,"offset":81},"features":{"Negation":"Affirmed","Experiencer":"Patient","PREF":"Belly ache","STY":"Sign or Symptom","TUI":"T184","Temporality":"historical","VOCABS":"OMIM,CST,NCI,CHV","inst":"C0221512","language":"","string_orig":"gastric pain","tui_full":"http://linkedlifedata.com/resource/semanticnetwork/id/T184","inst_full":"http://linkedlifedata.com/resource/umls/id/C0221512"}}],[],[{"id":40,"type":"Sentence","startNode":{"id":82,"offset":0},"endNode":{"id":83,"offset":82},"features":{"case":"lower"}}]],"docId":"report_1_2_276_0_7230010_3_1_3_1787205428_166_1117461927_101_RE_01.txt","brcId":null}
