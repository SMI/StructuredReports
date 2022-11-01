#!/usr/bin/env python3
# Convert a mapping file into a set of phenotypes to configure
# the annotation set in eHOST, typically in config/projectschema.xml.
# Usage:
#   mapping.json [projectschema.xml]
# Reads a list of mapping names from the given JSON file.
# Output goes to stdout or the given XML file.

import json
import sys


# ---------------------------------------------------------------------
def mapping_list_to_ehost_config(mapping_list):
    """ Takes a list of phenotypes and returns a string
    containing the XML configuration file for eHOST to be saved in
    config/projectschema.xml
    The list can actually be a dict as well, it's just iterated,
    so you can pass in the dict read from the JSON file
    settings/concept_mapping.json
    for example.
    """

    rc = """<?xml version="1.0" encoding="UTF-8"?>
<eHOST_Project_Configure Version="1.0">
    <Handling_Text_Database>false</Handling_Text_Database>
    <OracleFunction_Enabled>false</OracleFunction_Enabled>
    <AttributeEditor_PopUp_Enabled>false</AttributeEditor_PopUp_Enabled>
    <OracleFunction>true</OracleFunction>
    <AnnotationBuilder_Using_ExactSpan>false</AnnotationBuilder_Using_ExactSpan>
    <OracleFunction_Using_WholeWord>true</OracleFunction_Using_WholeWord>
    <GraphicAnnotationPath_Enabled>true</GraphicAnnotationPath_Enabled>
    <Diff_Indicator_Enabled>true</Diff_Indicator_Enabled>
    <Diff_Indicator_Check_CrossSpan>true</Diff_Indicator_Check_CrossSpan>
    <Diff_Indicator_Check_Overlaps>false</Diff_Indicator_Check_Overlaps>
    <StopWords_Enabled>false</StopWords_Enabled>
    <Output_VerifySuggestions>false</Output_VerifySuggestions>
    <Pre_Defined_Dictionary_DifferentWeight>false</Pre_Defined_Dictionary_DifferentWeight>
    <PreAnnotated_Dictionaries Owner="NLP_Assistant" />
    <attributeDefs />
    <Relationship_Rules />
    <classDefs>
"""
    for mapping in mapping_list:
        rc += """        <classDef>
            <Name>%s</Name>
            <RGB_R>0</RGB_R>
            <RGB_G>192</RGB_G>
            <RGB_B>128</RGB_B>
            <InHerit_Public_Attributes>true</InHerit_Public_Attributes>
            <Source>XML</Source>
        </classDef>
""" % mapping
    rc += """    </classDefs>
</eHOST_Project_Configure>
"""
    return rc

# ---------------------------------------------------------------------
if __name__ == "__main__":
    mapping_file = sys.argv[1] if len(sys.argv) > 1 else None
    xml_file = sys.argv[2] if len(sys.argv) > 2 else None
    with open(mapping_file) as fd:
        mapping_list = json.load(fd)
        xml_string = mapping_list_to_ehost_config(mapping_list)
        if xml_file:
            print(xml_string, file=open(sys.argv[2], 'w'))
        else:
            print(xml_string)
