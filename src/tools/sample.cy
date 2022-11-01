MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Condition {id: 'C0871269'}) SET node.PREF='Rhythm' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C0871269'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Treatment {id: 'C1519042'}) SET node.PREF='Phase II/III Trial' SET node.STY='Research Activity'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Treatment {id: 'C1519042'}) 
MERGE (i)-[r:IS_RESEARCH]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Condition {id: 'C0442759'}) SET node.PREF='Distance vision 3/6' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C0442759'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Condition {id: 'C0232257'}) SET node.PREF='Systolic Murmur' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C0232257'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Body {id: 'C0004454'}) SET node.PREF='Armpit' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Body {id: 'C0004454'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Body {id: 'C0015385'}) SET node.PREF='Extremity' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Body {id: 'C0015385'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Body {id: 'C0015811'}) SET node.PREF='Femurs' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Body {id: 'C0015811'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Treatment {id: 'C0034107'}) SET node.PREF='Pulses' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Treatment {id: 'C0034107'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Condition {id: 'C3833492'}) SET node.PREF='2+' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C3833492'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Body {id: 'C0015385'}) SET node.PREF='Extremity' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Body {id: 'C0015385'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Body {id: 'C0006901'}) SET node.PREF='Capillary' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Body {id: 'C0006901'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Body {id: 'C0024109'}) SET node.PREF='Pulmones' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Body {id: 'C0024109'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Body {id: 'C0024109'}) SET node.PREF='Pulmones' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Body {id: 'C0024109'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Drug {id: 'C3536832'}) SET node.PREF='Air gas' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Drug {id: 'C3536832'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Clinical {id: 'C0035234'}) SET node.PREF='Lung Sound' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Clinical {id: 'C0035234'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Condition {id: 'C1299585'}) SET node.PREF='Does not' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C1299585'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Condition {id: 'C0043144'}) SET node.PREF='Wheeze' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C0043144'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Temporal {id: 'C0040223'}) SET node.PREF='Time' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Temporal {id: 'C0040223'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Condition {id: 'C1272751'}) SET node.PREF='Does' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C1272751'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Condition {id: 'C0034642'}) SET node.PREF='Crackle' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C0034642'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Condition {id: 'C0476273'}) SET node.PREF='Distressed breathing' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C0476273'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Condition {id: 'C0424522'}) SET node.PREF='Asleep' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C0424522'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:THING {id: 'C1839839'}) SET node.PREF='MDI' SET node.STY='Mental or Behavioral Dysfunction'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:THING {id: 'C1839839'}) 
MERGE (i)-[r:RELATED]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Condition {id: 'C0278005'}) SET node.PREF='Normal bowel sounds' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C0278005'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Body {id: 'C1512338'}) SET node.PREF='HEENT' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Body {id: 'C1512338'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Treatment {id: 'C0030685'}) SET node.PREF='Release' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Treatment {id: 'C0030685'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Body {id: 'C3887460'}) SET node.PREF='Cardiovascular' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Body {id: 'C3887460'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Body {id: 'C0000726'}) SET node.PREF='Abdomen' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Body {id: 'C0000726'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Treatment {id: 'C1305866'}) SET node.PREF='Weighing' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Treatment {id: 'C1305866'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Body {id: 'C3887515'}) SET node.PREF='Genitourinary' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Body {id: 'C3887515'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Treatment {id: 'C1305866'}) SET node.PREF='Weighing' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Treatment {id: 'C1305866'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Treatment {id: 'C1519433'}) SET node.PREF='Special Diet Therapy' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Treatment {id: 'C1519433'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Temporal {id: 'C3871203'}) SET node.PREF='At discharge' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Temporal {id: 'C3871203'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:THING {id: 'C1839839'}) SET node.PREF='MDI' SET node.STY='Mental or Behavioral Dysfunction'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:THING {id: 'C1839839'}) 
MERGE (i)-[r:RELATED]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Condition {id: 'C0006271'}) SET node.PREF='Bronchiolitis' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C0006271'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Treatment {id: 'C0184666'}) SET node.PREF='Admission' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Treatment {id: 'C0184666'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Condition {id: 'C1514241'}) SET node.PREF='Positive' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C1514241'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Treatment {id: 'C2266673'}) SET node.PREF='Discharge instructions' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Treatment {id: 'C2266673'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Condition {id: 'C0476262'}) SET node.PREF='innocent heart murmur' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C0476262'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Condition {id: 'C0475806'}) SET node.PREF='Near' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C0475806'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Treatment {id: 'C0199168'}) SET node.PREF='Medical' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Treatment {id: 'C0199168'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Treatment {id: 'C0700287'}) SET node.PREF='Report' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Treatment {id: 'C0700287'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Condition {id: 'C0011900'}) SET node.PREF='Diagnosed' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C0011900'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Condition {id: 'C0274281'}) SET node.PREF='Exposure' SET node.STY='Injury or Poisoning'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C0274281'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Condition {id: 'C0006271'}) SET node.PREF='Bronchiolitis' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C0006271'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Condition {id: 'C0221423'}) SET node.PREF='Illness' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C0221423'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Condition {id: 'C1514241'}) SET node.PREF='Positive' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C1514241'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Treatment {id: 'C1555670'}) SET node.PREF='travel' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Treatment {id: 'C1555670'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Condition {id: 'C0476262'}) SET node.PREF='innocent heart murmur' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C0476262'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Temporal {id: 'C0332183'}) SET node.PREF='Frequent' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Temporal {id: 'C0332183'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Clinical {id: 'C0488549'}) SET node.PREF='Hospital course' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Clinical {id: 'C0488549'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Body {id: 'C0018563'}) SET node.PREF='Hand, NOS' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Body {id: 'C0018563'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Treatment {id: 'C0012159'}) SET node.PREF='ActClassDiet' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Treatment {id: 'C0012159'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Treatment {id: 'C0184666'}) SET node.PREF='Admission' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Treatment {id: 'C0184666'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Body {id: 'C0006141'}) SET node.PREF='Breast' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Body {id: 'C0006141'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Temporal {id: 'C0205178'}) SET node.PREF='Acuteness' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Temporal {id: 'C0205178'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Condition {id: 'C0700148'}) SET node.PREF='Congestion' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C0700148'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Treatment {id: 'C2148613'}) SET node.PREF='Feeding' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Treatment {id: 'C2148613'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Condition {id: 'C1514241'}) SET node.PREF='Positive' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C1514241'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Body {id: 'C0226896'}) SET node.PREF='Orally' SET node.STY='Body Space or Junction'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Body {id: 'C0226896'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Treatment {id: 'C0184666'}) SET node.PREF='Admission' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Treatment {id: 'C0184666'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Org {id: 'C0019994'}) SET node.PREF='Hospital' SET node.STY='Health Care Related Organization'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Org {id: 'C0019994'}) 
MERGE (i)-[r:AT_LOCATION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Drug {id: 'C0013227'}) SET node.PREF='Medicine' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Drug {id: 'C0013227'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Condition {id: 'C0001311'}) SET node.PREF='Acute Bronchiolitis' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C0001311'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Drug {id: 'C0001927'}) SET node.PREF='Albuterol' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Drug {id: 'C0001927'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Temporal {id: 'C2709070'}) SET node.PREF='on room air' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Temporal {id: 'C2709070'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Condition {id: 'C1273517'}) SET node.PREF='Used by' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C1273517'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Clinical {id: 'C1114365'}) SET node.PREF='Age' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Clinical {id: 'C1114365'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Temporal {id: 'C1879745'}) SET node.PREF='As needed' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Temporal {id: 'C1879745'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Treatment {id: 'C0596473'}) SET node.PREF='Early Detection' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Treatment {id: 'C0596473'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Condition {id: 'C0010200'}) SET node.PREF='Coughs' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C0010200'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Condition {id: 'C4047589'}) SET node.PREF='Admitted for observation' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C4047589'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Condition {id: 'C0043144'}) SET node.PREF='Wheeze' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C0043144'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Condition {id: 'C0006271'}) SET node.PREF='Bronchiolitis' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C0006271'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Condition {id: 'C0013404'}) SET node.PREF='Dyspnea' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C0013404'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Condition {id: 'C1457868'}) SET node.PREF='Worsens' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C1457868'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Clinical {id: 'C3263700'}) SET node.PREF='Instructions' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Clinical {id: 'C3263700'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Temporal {id: 'C0332173'}) SET node.PREF='Per Day' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Temporal {id: 'C0332173'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
ERROR: Experiencer is not Patient: Other
MERGE (node:Body {id: 'C0025148'}) SET node.PREF='Bulbus' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Body {id: 'C0025148'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Condition {id: 'C0221423'}) SET node.PREF='Illness' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C0221423'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
ERROR: Experiencer is not Patient: Other
MERGE (node:Treatment {id: 'C0038638'}) SET node.PREF='Suction' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Treatment {id: 'C0038638'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Temporal {id: 'C0457385'}) SET node.PREF='Second' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Temporal {id: 'C0457385'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
ERROR: Experiencer is not Patient: Other
MERGE (node:Body {id: 'C0028429'}) SET node.PREF='Nose, NOS' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Body {id: 'C0028429'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Temporal {id: 'C0332173'}) SET node.PREF='Per Day' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Temporal {id: 'C0332173'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
ERROR: Experiencer is not Patient: Other
MERGE (node:Temporal {id: 'C0205548'}) SET node.PREF='Immediate' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Temporal {id: 'C0205548'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Treatment {id: 'C0184666'}) SET node.PREF='Admission' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Treatment {id: 'C0184666'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
ERROR: Experiencer is not Patient: Other
MERGE (node:Condition {id: 'C0013404'}) SET node.PREF='Dyspnea' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C0013404'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
ERROR: Experiencer is not Patient: Other
MERGE (node:Condition {id: 'C0003578'}) SET node.PREF='Apneas' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C0003578'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
ERROR: Experiencer is not Patient: Other
MERGE (node:Condition {id: 'C1299585'}) SET node.PREF='Does not' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C1299585'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Temporal {id: 'C0240526'}) SET node.PREF='At night' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Temporal {id: 'C0240526'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Treatment {id: 'C0184666'}) SET node.PREF='Admission' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Treatment {id: 'C0184666'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Condition {id: 'C0018808'}) SET node.PREF='Murmur' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C0018808'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Treatment {id: 'C0039985'}) SET node.PREF='chest X ray' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Treatment {id: 'C0039985'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Treatment {id: 'C0039985'}) SET node.PREF='chest X ray' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Treatment {id: 'C0039985'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Body {id: 'C1261074'}) SET node.PREF='Right upper lobe' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Body {id: 'C1261074'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Body {id: 'C0024109'}) SET node.PREF='Pulmones' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Body {id: 'C0024109'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Condition {id: 'C1550457'}) SET node.PREF='Normal' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C1550457'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Body {id: 'C0018787'}) SET node.PREF='Hearts' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Body {id: 'C0018787'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Condition {id: 'C1550457'}) SET node.PREF='Normal' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C1550457'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Condition {id: 'C0009566'}) SET node.PREF='Complication' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C0009566'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Treatment {id: 'C0019993'}) SET node.PREF='Inpatient care' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Treatment {id: 'C0019993'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Condition {id: 'C3842676'}) SET node.PREF='Day 2' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C3842676'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Treatment {id: 'C0184666'}) SET node.PREF='Admission' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Treatment {id: 'C0184666'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
ERROR: Experiencer is not Patient: Other
MERGE (node:Condition {id: 'C0037088'}) SET node.PREF='Finding' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C0037088'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
ERROR: Experiencer is not Patient: Other
MERGE (node:Condition {id: 'C0476273'}) SET node.PREF='Distressed breathing' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C0476273'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
ERROR: Experiencer is not Patient: Other
MERGE (node:Condition {id: 'C0231835'}) SET node.PREF='Polypnea' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C0231835'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
ERROR: Experiencer is not Patient: Other
MERGE (node:Condition {id: 'C0332523'}) SET node.PREF='Retraction' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C0332523'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
ERROR: Experiencer is not Patient: Other
MERGE (node:Condition {id: 'C0234892'}) SET node.PREF='Grunting' SET node.STY='Individual Behavior'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C0234892'}) 
MERGE (i)-[r:IS_BEHAVIOUR]->(j); 
ERROR: Experiencer is not Patient: Other
MERGE (node:Condition {id: 'C0277873'}) SET node.PREF='Nasal Flaring' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C0277873'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Treatment {id: 'C0019993'}) SET node.PREF='Inpatient care' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Treatment {id: 'C0019993'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Drug {id: 'C0001927'}) SET node.PREF='Albuterol' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Drug {id: 'C0001927'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
ERROR: Experiencer is not Patient: Other
MERGE (node:Condition {id: 'C0023185'}) SET node.PREF='Learning' SET node.STY='Mental Process'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C0023185'}) 
MERGE (i)-[r:IS_MENTALPROCESS]->(j); 
ERROR: Experiencer is not Patient: Other
MERGE (node:Treatment {id: 'C0002423'}) SET node.PREF='Ambulatory Care' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Treatment {id: 'C0002423'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Condition {id: 'C0476273'}) SET node.PREF='Distressed breathing' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C0476273'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Treatment {id: 'C0030685'}) SET node.PREF='Release' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Treatment {id: 'C0030685'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Condition {id: 'C0012634'}) SET node.PREF='Disease' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C0012634'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Treatment {id: 'C0030685'}) SET node.PREF='Release' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Treatment {id: 'C0030685'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Treatment {id: 'C0031809'}) SET node.PREF='Physical' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Treatment {id: 'C0031809'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Clinical {id: 'C0488614'}) SET node.PREF='Vital signs' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Clinical {id: 'C0488614'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Condition {id: 'C0277797'}) SET node.PREF='Afebrile' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C0277797'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Clinical {id: 'C0488614'}) SET node.PREF='Vital signs' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Clinical {id: 'C0488614'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Condition {id: 'C1265570'}) SET node.PREF='Within Normal Limits' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C1265570'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Temporal {id: 'C2709070'}) SET node.PREF='on room air' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Temporal {id: 'C2709070'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Treatment {id: 'C3812897'}) SET node.PREF='General' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Treatment {id: 'C3812897'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Condition {id: 'C0424522'}) SET node.PREF='Asleep' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C0424522'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Temporal {id: 'C0205178'}) SET node.PREF='Acuteness' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Temporal {id: 'C0205178'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Condition {id: 'C0231303'}) SET node.PREF='Distress' SET node.STY='Mental Process'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C0231303'}) 
MERGE (i)-[r:IS_MENTALPROCESS]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Body {id: 'C0224549'}) SET node.PREF='Anterior Fontanel' SET node.STY='Body Space or Junction'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Body {id: 'C0224549'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Condition {id: 'C1272751'}) SET node.PREF='Does' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C1272751'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Body {id: 'C0458827'}) SET node.PREF='Airway' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Body {id: 'C0458827'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Condition {id: 'C0700148'}) SET node.PREF='Congestion' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C0700148'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Condition {id: 'C0002962'}) SET node.PREF='Angina' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Condition {id: 'C0002962'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Drug {id: 'C0017887'}) SET node.PREF='Nitroglycerin' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Drug {id: 'C0017887'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Treatment {id: 'C0005824'}) SET node.PREF='Blood pressure taking' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Treatment {id: 'C0005824'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Drug {id: 'C0025859'}) SET node.PREF='Metoprolol' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Drug {id: 'C0025859'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Drug {id: 'C0719509'}) SET node.PREF='Coreg' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Drug {id: 'C0719509'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Drug {id: 'C0003364'}) SET node.PREF='Hypotensives' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Drug {id: 'C0003364'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Drug {id: 'C1367030'}) SET node.PREF='Aspirin 160 MG' SET node.STY='Clinical Drug'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Drug {id: 'C1367030'}) 
MERGE (i)-[r:IS_ADMINISTERED]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Drug {id: 'C0003015'}) SET node.PREF='ACE INHIB' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Drug {id: 'C0003015'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Clinical {id: 'C3870488'}) SET node.PREF='Discharge meds' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Clinical {id: 'C3870488'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Temporal {id: 'C0332173'}) SET node.PREF='Per Day' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Temporal {id: 'C0332173'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Temporal {id: 'C0332283'}) SET node.PREF='Followed by' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Temporal {id: 'C0332283'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Drug {id: 'C0699992'}) SET node.PREF='Lasix' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Drug {id: 'C0699992'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Drug {id: 'C0719509'}) SET node.PREF='Coreg' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Drug {id: 'C0719509'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Drug {id: 'C0905678'}) SET node.PREF='Spiriva' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Drug {id: 'C0905678'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Drug {id: 'C0989916'}) SET node.PREF='Simvastatin 40 MG' SET node.STY='Clinical Drug'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Drug {id: 'C0989916'}) 
MERGE (i)-[r:IS_ADMINISTERED]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Temporal {id: 'C0332173'}) SET node.PREF='Per Day' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Temporal {id: 'C0332173'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Drug {id: 'C0987222'}) SET node.PREF='Lisinopril 5 MG' SET node.STY='Clinical Drug'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Drug {id: 'C0987222'}) 
MERGE (i)-[r:IS_ADMINISTERED]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Drug {id: 'C0001927'}) SET node.PREF='Albuterol' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Drug {id: 'C0001927'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Drug {id: 'C0876139'}) SET node.PREF='Protonix' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Drug {id: 'C0876139'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Drug {id: 'C0965130'}) SET node.PREF='Advair' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Drug {id: 'C0965130'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Drug {id: 'C0876218'}) SET node.PREF='Xopenex' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Drug {id: 'C0876218'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Temporal {id: 'C0332177'}) SET node.PREF='/month' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Temporal {id: 'C0332177'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Temporal {id: 'C0439230'}) SET node.PREF='Week' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Temporal {id: 'C0439230'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Condition {id: 'C0013798'}) SET node.PREF='Electrocardiogram' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Condition {id: 'C0013798'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Condition {id: 'C0589120'}) SET node.PREF='Follow up' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Condition {id: 'C0589120'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Treatment {id: 'C0184666'}) SET node.PREF='Admission' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Treatment {id: 'C0184666'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Org {id: 'C0019994'}) SET node.PREF='Hospital' SET node.STY='Health Care Related Organization'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Org {id: 'C0019994'}) 
MERGE (i)-[r:AT_LOCATION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Condition {id: 'C0008031'}) SET node.PREF='Chest Pain' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Condition {id: 'C0008031'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Condition {id: 'C0035229'}) SET node.PREF='Respiratory impairment' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Condition {id: 'C0035229'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Condition {id: 'C0746102'}) SET node.PREF='Chronic Lung Disease' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Condition {id: 'C0746102'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Condition {id: 'C0002962'}) SET node.PREF='Angina' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Condition {id: 'C0002962'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Treatment {id: 'C0199168'}) SET node.PREF='Medical' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Treatment {id: 'C0199168'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Treatment {id: 'C0700287'}) SET node.PREF='Report' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Treatment {id: 'C0700287'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Temporal {id: 'C0439223'}) SET node.PREF='Millisecond' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Temporal {id: 'C0439223'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Temporal {id: 'C0439234'}) SET node.PREF='Year' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Temporal {id: 'C0439234'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Temporal {id: 'C0580836'}) SET node.PREF='Old' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Temporal {id: 'C0580836'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Treatment {id: 'C0184666'}) SET node.PREF='Admission' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Treatment {id: 'C0184666'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Org {id: 'C0019994'}) SET node.PREF='Hospital' SET node.STY='Health Care Related Organization'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Org {id: 'C0019994'}) 
MERGE (i)-[r:AT_LOCATION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Condition {id: 'C0008031'}) SET node.PREF='Chest Pain' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Condition {id: 'C0008031'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Condition {id: 'C0035229'}) SET node.PREF='Respiratory impairment' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Condition {id: 'C0035229'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Condition {id: 'C0746102'}) SET node.PREF='Chronic Lung Disease' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Condition {id: 'C0746102'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Condition {id: 'C0002962'}) SET node.PREF='Angina' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Condition {id: 'C0002962'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Condition {id: 'C1578513'}) SET node.PREF='new' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Condition {id: 'C1578513'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Condition {id: 'C1839341'}) SET node.PREF='T Wave Abnormality' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Condition {id: 'C1839341'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Temporal {id: 'C0750729'}) SET node.PREF='Course' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Temporal {id: 'C0750729'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Body {id: 'C0005847'}) SET node.PREF='Vessel' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Body {id: 'C0005847'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Treatment {id: 'C1536078'}) SET node.PREF='Bypass Surgery' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Treatment {id: 'C1536078'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Treatment {id: 'C0085532'}) SET node.PREF='Coronary angiogram' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Treatment {id: 'C0085532'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Body {id: 'C0042449'}) SET node.PREF='Venous' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Body {id: 'C0042449'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Body {id: 'C0332835'}) SET node.PREF='Grafts' SET node.STY='Tissue'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Body {id: 'C0332835'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Body {id: 'C0006141'}) SET node.PREF='Breast' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Body {id: 'C0006141'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Body {id: 'C0005847'}) SET node.PREF='Vessel' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Body {id: 'C0005847'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Condition {id: 'C1578513'}) SET node.PREF='new' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Condition {id: 'C1578513'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Condition {id: 'C0012634'}) SET node.PREF='Disease' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Condition {id: 'C0012634'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Temporal {id: 'C0016884'}) SET node.PREF='Future' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Temporal {id: 'C0016884'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Temporal {id: 'C1292429'}) SET node.PREF='8 hour' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Temporal {id: 'C1292429'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Condition {id: 'C0026821'}) SET node.PREF='Cramps' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Condition {id: 'C0026821'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Drug {id: 'C0699142'}) SET node.PREF='Tylenol' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Drug {id: 'C0699142'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Temporal {id: 'C1292426'}) SET node.PREF='4 hour' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Temporal {id: 'C1292426'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Condition {id: 'C0030193'}) SET node.PREF='Painful' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Condition {id: 'C0030193'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Drug {id: 'C0772413'}) SET node.PREF='Prenatal Vitamin' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Drug {id: 'C0772413'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Temporal {id: 'C0332173'}) SET node.PREF='Per Day' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Temporal {id: 'C0332173'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Drug {id: 'C0723916'}) SET node.PREF='Triple Antibiotic' SET node.STY='Antibiotic'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Drug {id: 'C0723916'}) 
MERGE (i)-[r:IS_ADMINISTERED]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Treatment {id: 'C0184898'}) SET node.PREF='Incision' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Treatment {id: 'C0184898'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Treatment {id: 'C3274430'}) SET node.PREF='PROCEDURE' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Treatment {id: 'C3274430'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Clinical {id: 'C3484365'}) SET node.PREF='Pregnancy' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Clinical {id: 'C3484365'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Condition {id: 'C0268318'}) SET node.PREF='Obstetric Cholestasis' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Condition {id: 'C0268318'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Condition {id: 'C1744706'}) SET node.PREF='intolerance' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Condition {id: 'C1744706'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Condition {id: 'C0013418'}) SET node.PREF='Dystocia' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Condition {id: 'C0013418'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Treatment {id: 'C0439631'}) SET node.PREF='Primary' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Treatment {id: 'C0439631'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Treatment {id: 'C0007876'}) SET node.PREF='C section' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Treatment {id: 'C0007876'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Treatment {id: 'C0199168'}) SET node.PREF='Medical' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Treatment {id: 'C0199168'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Treatment {id: 'C0700287'}) SET node.PREF='Report' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Treatment {id: 'C0700287'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Temporal {id: 'C3853528'}) SET node.PREF='Final' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Temporal {id: 'C3853528'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Condition {id: 'C0011900'}) SET node.PREF='Diagnosed' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Condition {id: 'C0011900'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Clinical {id: 'C3484365'}) SET node.PREF='Pregnancy' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Clinical {id: 'C3484365'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Condition {id: 'C0268318'}) SET node.PREF='Obstetric Cholestasis' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Condition {id: 'C0268318'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Condition {id: 'C1744706'}) SET node.PREF='intolerance' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Condition {id: 'C1744706'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Condition {id: 'C0013418'}) SET node.PREF='Dystocia' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Condition {id: 'C0013418'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Treatment {id: 'C0439631'}) SET node.PREF='Primary' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Treatment {id: 'C0439631'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Treatment {id: 'C0007876'}) SET node.PREF='C section' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Treatment {id: 'C0007876'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Temporal {id: 'C0439234'}) SET node.PREF='Year' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Temporal {id: 'C0439234'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Temporal {id: 'C0580836'}) SET node.PREF='Old' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Temporal {id: 'C0580836'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Condition {id: 'C0232997'}) SET node.PREF='Second pregnancy' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Condition {id: 'C0232997'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Condition {id: 'C0268318'}) SET node.PREF='Obstetric Cholestasis' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Condition {id: 'C0268318'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Temporal {id: 'C1442457'}) SET node.PREF='2 weeks' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Temporal {id: 'C1442457'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Temporal {id: 'C0332173'}) SET node.PREF='Per Day' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Temporal {id: 'C0332173'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Treatment {id: 'C0857127'}) SET node.PREF='induction' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Treatment {id: 'C0857127'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Temporal {id: 'C0457385'}) SET node.PREF='Second' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Temporal {id: 'C0457385'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Temporal {id: 'C0332173'}) SET node.PREF='Per Day' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Temporal {id: 'C0332173'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Temporal {id: 'C0439227'}) SET node.PREF='Hour' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Temporal {id: 'C0439227'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Treatment {id: 'C0220825'}) SET node.PREF='Evaluate' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Treatment {id: 'C0220825'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Condition {id: 'C0410918'}) SET node.PREF='Fetal Tachycardia' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Condition {id: 'C0410918'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Temporal {id: 'C0521114'}) SET node.PREF='Infrequent' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Temporal {id: 'C0521114'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Condition {id: 'C0429482'}) SET node.PREF='Late Deceleration' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Condition {id: 'C0429482'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Temporal {id: 'C0175668'}) SET node.PREF='Secondary' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Temporal {id: 'C0175668'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Temporal {id: 'C1882154'}) SET node.PREF='Operative' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Temporal {id: 'C1882154'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Treatment {id: 'C0439631'}) SET node.PREF='Primary' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Treatment {id: 'C0439631'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Treatment {id: 'C0007876'}) SET node.PREF='C section' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Treatment {id: 'C0007876'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Condition {id: 'C0009566'}) SET node.PREF='Complication' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Condition {id: 'C0009566'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Treatment {id: 'C1293134'}) SET node.PREF='Enlarged' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Treatment {id: 'C1293134'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Condition {id: 'C0019080'}) SET node.PREF='Bleeding' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Condition {id: 'C0019080'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Condition {id: 'C4036115'}) SET node.PREF='Very mild' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Condition {id: 'C4036115'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Condition {id: 'C0039231'}) SET node.PREF='Pulse fast' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Condition {id: 'C0039231'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Temporal {id: 'C3263555'}) SET node.PREF='at delivery' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Temporal {id: 'C3263555'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Condition {id: 'C0311392'}) SET node.PREF='Sign, NOS' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Condition {id: 'C0311392'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Body {id: 'C0021853'}) SET node.PREF='Intestine' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Body {id: 'C0021853'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Temporal {id: 'C1279919'}) SET node.PREF='Earlier' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Temporal {id: 'C1279919'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Condition {id: 'C2712184'}) SET node.PREF='Normal voiding' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Condition {id: 'C2712184'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Condition {id: 'C0008495'}) SET node.PREF='Amnionitis' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Condition {id: 'C0008495'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Treatment {id: 'C0087111'}) SET node.PREF='Therapy' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Treatment {id: 'C0087111'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Treatment {id: 'C0184967'}) SET node.PREF='Packing' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Treatment {id: 'C0184967'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Condition {id: 'C0332575'}) SET node.PREF='Redness' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Condition {id: 'C0332575'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Temporal {id: 'C0175668'}) SET node.PREF='Secondary' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Temporal {id: 'C0175668'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Treatment {id: 'C0018935'}) SET node.PREF='Hematocrit' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Treatment {id: 'C0018935'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Drug {id: 'C0003232'}) SET node.PREF='Antibiotic' SET node.STY='Antibiotic'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Drug {id: 'C0003232'}) 
MERGE (i)-[r:IS_ADMINISTERED]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Condition {id: 'C3842589'}) SET node.PREF='20%' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Condition {id: 'C3842589'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Condition {id: 'C2825142'}) SET node.PREF='Result' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Condition {id: 'C2825142'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Temporal {id: 'C0205265'}) SET node.PREF='Initial' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Temporal {id: 'C0205265'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Temporal {id: 'C1292423'}) SET node.PREF='72 hour' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Temporal {id: 'C1292423'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Treatment {id: 'C0018935'}) SET node.PREF='Hematocrit' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Treatment {id: 'C0018935'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Condition {id: 'C0002871'}) SET node.PREF='Anemia' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Condition {id: 'C0002871'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Condition {id: 'C0002871'}) SET node.PREF='Anemia' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Condition {id: 'C0002871'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Treatment {id: 'C0031809'}) SET node.PREF='Physical' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Treatment {id: 'C0031809'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Temporal {id: 'C1548175'}) SET node.PREF='On discharge' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Temporal {id: 'C1548175'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Drug {id: 'C0003232'}) SET node.PREF='Antibiotic' SET node.STY='Antibiotic'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Drug {id: 'C0003232'}) 
MERGE (i)-[r:IS_ADMINISTERED]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Clinical {id: 'C0488614'}) SET node.PREF='Vital signs' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Clinical {id: 'C0488614'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Clinical {id: 'C1858460'}) SET node.PREF='Maternal' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Clinical {id: 'C1858460'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Condition {id: 'C0277797'}) SET node.PREF='Afebrile' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Condition {id: 'C0277797'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Condition {id: 'C0039231'}) SET node.PREF='Pulse fast' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Condition {id: 'C0039231'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Condition {id: 'C0239110'}) SET node.PREF='alerts' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Condition {id: 'C0239110'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Condition {id: 'C1961028'}) SET node.PREF='Oriented' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Condition {id: 'C1961028'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Condition {id: 'C3714811'}) SET node.PREF='Resolved' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Condition {id: 'C3714811'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Temporal {id: 'C0332173'}) SET node.PREF='Per Day' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Temporal {id: 'C0332173'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Temporal {id: 'C3871203'}) SET node.PREF='At discharge' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Temporal {id: 'C3871203'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Clinical {id: 'C0080078'}) SET node.PREF='Range of Motion' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Clinical {id: 'C0080078'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Temporal {id: 'C0332173'}) SET node.PREF='Per Day' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Temporal {id: 'C0332173'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Body {id: 'C0278454'}) SET node.PREF='extremities' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Body {id: 'C0278454'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Treatment {id: 'C0012159'}) SET node.PREF='ActClassDiet' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Treatment {id: 'C0012159'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Treatment {id: 'C1561560'}) SET node.PREF='ambulatory' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Treatment {id: 'C1561560'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Treatment {id: 'C0034107'}) SET node.PREF='Pulses' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Treatment {id: 'C0034107'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Body {id: 'C0024109'}) SET node.PREF='Pulmones' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Body {id: 'C0024109'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Condition {id: 'C1709157'}) SET node.PREF='Clear Margin' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Condition {id: 'C1709157'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Body {id: 'C0000726'}) SET node.PREF='Abdomen' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Body {id: 'C0000726'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Condition {id: 'C0577946'}) SET node.PREF='Tympany' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Condition {id: 'C0577946'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Body {id: 'C0016823'}) SET node.PREF='Fundus' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Body {id: 'C0016823'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Treatment {id: 'C0184898'}) SET node.PREF='Incision' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Treatment {id: 'C0184898'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Condition {id: 'C3833383'}) SET node.PREF='Scant' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Condition {id: 'C3833383'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Condition {id: 'C0013604'}) SET node.PREF='Dropsy' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Condition {id: 'C0013604'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Treatment {id: 'C0681827'}) SET node.PREF='Laboratory Study' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Treatment {id: 'C0681827'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Treatment {id: 'C0018935'}) SET node.PREF='Hematocrit' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Treatment {id: 'C0018935'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Treatment {id: 'C0023901'}) SET node.PREF='Liver Study' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Treatment {id: 'C0023901'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Condition {id: 'C1265570'}) SET node.PREF='Within Normal Limits' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Condition {id: 'C1265570'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Temporal {id: 'C0439586'}) SET node.PREF='48 hour' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Temporal {id: 'C0439586'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Temporal {id: 'C0332152'}) SET node.PREF='Before' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Temporal {id: 'C0332152'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Treatment {id: 'C0030685'}) SET node.PREF='Release' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Treatment {id: 'C0030685'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Treatment {id: 'C1522577'}) SET node.PREF='Followup' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Treatment {id: 'C1522577'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Body {id: 'C0030797'}) SET node.PREF='Pelvic' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Body {id: 'C0030797'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Treatment {id: 'C0012159'}) SET node.PREF='ActClassDiet' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Treatment {id: 'C0012159'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Condition {id: 'C0589120'}) SET node.PREF='Follow up' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Condition {id: 'C0589120'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Temporal {id: 'C1442457'}) SET node.PREF='2 weeks' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Temporal {id: 'C1442457'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Drug {id: 'C0699203'}) SET node.PREF='Motrin' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Drug {id: 'C0699203'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Drug {id: 'C0012265'}) SET node.PREF='Digoxin' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Drug {id: 'C0012265'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Treatment {id: 'C0199168'}) SET node.PREF='Medical' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Treatment {id: 'C0199168'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Temporal {id: 'C0332173'}) SET node.PREF='Per Day' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Temporal {id: 'C0332173'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Treatment {id: 'C0700287'}) SET node.PREF='Report' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Treatment {id: 'C0700287'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Drug {id: 'C1123178'}) SET node.PREF='Enalapril 5 MG' SET node.STY='Clinical Drug'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Drug {id: 'C1123178'}) 
MERGE (i)-[r:IS_ADMINISTERED]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Treatment {id: 'C0023508'}) SET node.PREF='Leukocytes' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Treatment {id: 'C0023508'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Temporal {id: 'C0332173'}) SET node.PREF='Per Day' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Temporal {id: 'C0332173'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Drug {id: 'C0590690'}) SET node.PREF='Imdur' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Drug {id: 'C0590690'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Treatment {id: 'C0184666'}) SET node.PREF='Admission' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Treatment {id: 'C0184666'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Condition {id: 'C0024117'}) SET node.PREF='COPD NOS' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Condition {id: 'C0024117'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Temporal {id: 'C0332173'}) SET node.PREF='Per Day' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Temporal {id: 'C0332173'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Drug {id: 'C0699988'}) SET node.PREF='Lanoxin' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Drug {id: 'C0699988'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Condition {id: 'C1550457'}) SET node.PREF='Normal' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Condition {id: 'C1550457'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Temporal {id: 'C0332173'}) SET node.PREF='Per Day' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Temporal {id: 'C0332173'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Condition {id: 'C0149514'}) SET node.PREF='Acute Bronchitis' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Condition {id: 'C0149514'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Drug {id: 'C0983882'}) SET node.PREF='Aspirin 81 MG' SET node.STY='Clinical Drug'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Drug {id: 'C0983882'}) 
MERGE (i)-[r:IS_ADMINISTERED]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Condition {id: 'C0011900'}) SET node.PREF='Diagnosed' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Condition {id: 'C0011900'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Temporal {id: 'C0332173'}) SET node.PREF='Per Day' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Temporal {id: 'C0332173'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Treatment {id: 'C0032181'}) SET node.PREF='Platelets' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Treatment {id: 'C0032181'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Drug {id: 'C0001927'}) SET node.PREF='Albuterol' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Drug {id: 'C0001927'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Temporal {id: 'C3871203'}) SET node.PREF='At discharge' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Temporal {id: 'C3871203'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Drug {id: 'C0591130'}) SET node.PREF='Atrovent' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Drug {id: 'C0591130'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Drug {id: 'C0989059'}) SET node.PREF='Potassium Chloride 10 MEQ' SET node.STY='Clinical Drug'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Drug {id: 'C0989059'}) 
MERGE (i)-[r:IS_ADMINISTERED]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Treatment {id: 'C0039985'}) SET node.PREF='chest X ray' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Treatment {id: 'C0039985'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Temporal {id: 'C0332173'}) SET node.PREF='Per Day' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Temporal {id: 'C0332173'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Condition {id: 'C0039869'}) SET node.PREF='Thought' SET node.STY='Mental Process'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Condition {id: 'C0039869'}) 
MERGE (i)-[r:IS_MENTALPROCESS]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Drug {id: 'C0699992'}) SET node.PREF='Lasix' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Drug {id: 'C0699992'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Condition {id: 'C0024117'}) SET node.PREF='COPD NOS' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Condition {id: 'C0024117'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Body {id: 'C0596790'}) SET node.PREF='interstitial' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Body {id: 'C0596790'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Temporal {id: 'C0332173'}) SET node.PREF='Per Day' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Temporal {id: 'C0332173'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Drug {id: 'C0720895'}) SET node.PREF='Humibid L.A.' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Drug {id: 'C0720895'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Body {id: 'C0226896'}) SET node.PREF='Orally' SET node.STY='Body Space or Junction'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Body {id: 'C0226896'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Body {id: 'C0024109'}) SET node.PREF='Pulmones' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Body {id: 'C0024109'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Drug {id: 'C0721336'}) SET node.PREF='Levaquin' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Drug {id: 'C0721336'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Temporal {id: 'C0205178'}) SET node.PREF='Acuteness' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Temporal {id: 'C0205178'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Condition {id: 'C0235874'}) SET node.PREF='Disease Exacerbation' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Condition {id: 'C0235874'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Temporal {id: 'C0332173'}) SET node.PREF='Per Day' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Temporal {id: 'C0332173'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Condition {id: 'C0149514'}) SET node.PREF='Acute Bronchitis' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Condition {id: 'C0149514'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Drug {id: 'C0030054'}) SET node.PREF='Oxygen' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Drug {id: 'C0030054'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Condition {id: 'C1513302'}) SET node.PREF='Mild' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Condition {id: 'C1513302'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Temporal {id: 'C1879745'}) SET node.PREF='As needed' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Temporal {id: 'C1879745'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Condition {id: 'C0018802'}) SET node.PREF='CHF NOS' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Condition {id: 'C0018802'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Treatment {id: 'C0022885'}) SET node.PREF='Lab Test' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Treatment {id: 'C0022885'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Condition {id: 'C0546817'}) SET node.PREF='Fluid excess' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Condition {id: 'C0546817'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Treatment {id: 'C0042014'}) SET node.PREF='Urinalyses' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Treatment {id: 'C0042014'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Treatment {id: 'C1553496'}) SET node.PREF='field' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Treatment {id: 'C1553496'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Treatment {id: 'C0430404'}) SET node.PREF='Urine culture' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Treatment {id: 'C0430404'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Treatment {id: 'C0040808'}) SET node.PREF='Regimen' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Treatment {id: 'C0040808'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Condition {id: 'C1513916'}) SET node.PREF='Negative' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Condition {id: 'C1513916'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Treatment {id: 'C0030685'}) SET node.PREF='Release' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Treatment {id: 'C0030685'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Treatment {id: 'C0200949'}) SET node.PREF='Blood culture' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Treatment {id: 'C0200949'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Condition {id: 'C0004153'}) SET node.PREF='Atheromatosis' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Condition {id: 'C0004153'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Condition {id: 'C1513916'}) SET node.PREF='Negative' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Condition {id: 'C1513916'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Body {id: 'C0024109'}) SET node.PREF='Pulmones' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Body {id: 'C0024109'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Condition {id: 'C0013404'}) SET node.PREF='Dyspnea' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Condition {id: 'C0013404'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Drug {id: 'C0030054'}) SET node.PREF='Oxygen' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Drug {id: 'C0030054'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Condition {id: 'C1513302'}) SET node.PREF='Mild' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Condition {id: 'C1513302'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Condition {id: 'C0392079'}) SET node.PREF='senile' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Condition {id: 'C0392079'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Clinical {id: 'C0488614'}) SET node.PREF='Vital signs' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Clinical {id: 'C0488614'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:THING {id: 'C0497327'}) SET node.PREF='Amentia' SET node.STY='Mental or Behavioral Dysfunction'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:THING {id: 'C0497327'}) 
MERGE (i)-[r:RELATED]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Treatment {id: 'C0030685'}) SET node.PREF='Release' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Treatment {id: 'C0030685'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Condition {id: 'C0020676'}) SET node.PREF='Hypothyroid' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Condition {id: 'C0020676'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Treatment {id: 'C0337443'}) SET node.PREF='Sodium' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Treatment {id: 'C0337443'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Condition {id: 'C0589120'}) SET node.PREF='Follow up' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Condition {id: 'C0589120'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Treatment {id: 'C0202194'}) SET node.PREF='Potassium' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Treatment {id: 'C0202194'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Temporal {id: 'C0205191'}) SET node.PREF='Chronic' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Temporal {id: 'C0205191'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Temporal {id: 'C0439230'}) SET node.PREF='Week' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Temporal {id: 'C0439230'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Condition {id: 'C0011900'}) SET node.PREF='Diagnosed' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Condition {id: 'C0011900'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Treatment {id: 'C0201952'}) SET node.PREF='Chloride' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Treatment {id: 'C0201952'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Drug {id: 'C0030054'}) SET node.PREF='Oxygen' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Drug {id: 'C0030054'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Condition {id: 'C0582114'}) SET node.PREF='Do not resuscitate' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Condition {id: 'C0582114'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Drug {id: 'C0017725'}) SET node.PREF='Glucose' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Drug {id: 'C0017725'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Treatment {id: 'C0422202'}) SET node.PREF='Notify' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Treatment {id: 'C0422202'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Drug {id: 'C0040160'}) SET node.PREF='Thyrotropin' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Drug {id: 'C0040160'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Condition {id: 'C1457868'}) SET node.PREF='Worsens' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Condition {id: 'C1457868'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Condition {id: 'C3840725'}) SET node.PREF='Do not' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Condition {id: 'C3840725'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Treatment {id: 'C0201930'}) SET node.PREF='Carbon Dioxide' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Treatment {id: 'C0201930'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Treatment {id: 'C0033325'}) SET node.PREF='Prognoses' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Treatment {id: 'C0033325'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Treatment {id: 'C0201975'}) SET node.PREF='Creatinine' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Treatment {id: 'C0201975'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Treatment {id: 'C0005845'}) SET node.PREF='Blood urea' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Treatment {id: 'C0005845'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Clinical {id: 'C0488549'}) SET node.PREF='Hospital course' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Clinical {id: 'C0488549'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Condition {id: 'C0024117'}) SET node.PREF='COPD NOS' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Condition {id: 'C0024117'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Condition {id: 'C2599640'}) SET node.PREF='Admitted from' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Condition {id: 'C2599640'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Drug {id: 'C0006675'}) SET node.PREF='Calcium' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Drug {id: 'C0006675'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Condition {id: 'C0149514'}) SET node.PREF='Acute Bronchitis' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Condition {id: 'C0149514'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Drug {id: 'C0013227'}) SET node.PREF='Medicine' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Drug {id: 'C0013227'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Drug {id: 'C0728762'}) SET node.PREF='Synthroid' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Drug {id: 'C0728762'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Body {id: 'C1305859'}) SET node.PREF='C5 innervation' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Body {id: 'C1305859'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Condition {id: 'C3843715'}) SET node.PREF='5-6' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Condition {id: 'C3843715'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Body {id: 'C1305860'}) SET node.PREF='C6 innervation' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Body {id: 'C1305860'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Body {id: 'C1305858'}) SET node.PREF='C4 innervation' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Body {id: 'C1305858'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Treatment {id: 'C0408598'}) SET node.PREF='Cervical discectomy' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Treatment {id: 'C0408598'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Condition {id: 'C0700594'}) SET node.PREF='Radiculopathy' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Condition {id: 'C0700594'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Treatment {id: 'C1293131'}) SET node.PREF='Fusion' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Treatment {id: 'C1293131'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Condition {id: 'C1261287'}) SET node.PREF='Stenoses' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Condition {id: 'C1261287'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Body {id: 'C1305859'}) SET node.PREF='C5 innervation' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Body {id: 'C1305859'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Body {id: 'C1305858'}) SET node.PREF='C4 innervation' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Body {id: 'C1305858'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Condition {id: 'C3843715'}) SET node.PREF='5-6' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Condition {id: 'C3843715'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Body {id: 'C1305859'}) SET node.PREF='C5 innervation' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Body {id: 'C1305859'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Treatment {id: 'C0199168'}) SET node.PREF='Medical' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Treatment {id: 'C0199168'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Condition {id: 'C3843715'}) SET node.PREF='5-6' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Condition {id: 'C3843715'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Treatment {id: 'C0700287'}) SET node.PREF='Report' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Treatment {id: 'C0700287'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Body {id: 'C1305860'}) SET node.PREF='C6 innervation' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Body {id: 'C1305860'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Temporal {id: 'C3853528'}) SET node.PREF='Final' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Temporal {id: 'C3853528'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Condition {id: 'C0011900'}) SET node.PREF='Diagnosed' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Condition {id: 'C0011900'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Body {id: 'C1305858'}) SET node.PREF='C4 innervation' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Body {id: 'C1305858'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Body {id: 'C1305861'}) SET node.PREF='C7 innervation' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Body {id: 'C1305861'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Body {id: 'C1305859'}) SET node.PREF='C5 innervation' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Body {id: 'C1305859'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Temporal {id: 'C0456904'}) SET node.PREF='Intraoperative' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Temporal {id: 'C0456904'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Condition {id: 'C3843715'}) SET node.PREF='5-6' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Condition {id: 'C3843715'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Body {id: 'C1305860'}) SET node.PREF='C6 innervation' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Body {id: 'C1305860'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Treatment {id: 'C1306645'}) SET node.PREF='Skiagram' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Treatment {id: 'C1306645'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Temporal {id: 'C0439234'}) SET node.PREF='Year' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Temporal {id: 'C0439234'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Body {id: 'C1305858'}) SET node.PREF='C4 innervation' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Body {id: 'C1305858'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Temporal {id: 'C0580836'}) SET node.PREF='Old' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Temporal {id: 'C0580836'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Condition {id: 'C0700594'}) SET node.PREF='Radiculopathy' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Condition {id: 'C0700594'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Condition {id: 'C1261287'}) SET node.PREF='Stenoses' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Condition {id: 'C1261287'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Condition {id: 'C0007859'}) SET node.PREF='Neckache' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Condition {id: 'C0007859'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Condition {id: 'C0700594'}) SET node.PREF='Radiculopathy' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Condition {id: 'C0700594'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Body {id: 'C1305859'}) SET node.PREF='C5 innervation' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Body {id: 'C1305859'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Condition {id: 'C0033893'}) SET node.PREF='Stress Headache' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Condition {id: 'C0033893'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Condition {id: 'C3843715'}) SET node.PREF='5-6' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Condition {id: 'C3843715'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Treatment {id: 'C0543467'}) SET node.PREF='Surgery' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Treatment {id: 'C0543467'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Condition {id: 'C1299586'}) SET node.PREF='Difficult' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Condition {id: 'C1299586'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Condition {id: 'C0751437'}) SET node.PREF='Anterior' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Condition {id: 'C0751437'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Temporal {id: 'C0332185'}) SET node.PREF='Recent' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Temporal {id: 'C0332185'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Condition {id: 'C2242996'}) SET node.PREF='Tingling' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Condition {id: 'C2242996'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Condition {id: 'C0020580'}) SET node.PREF='Numbness' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Condition {id: 'C0020580'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Body {id: 'C0016129'}) SET node.PREF='Finger' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Body {id: 'C0016129'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Body {id: 'C0230371'}) SET node.PREF='L hand' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Body {id: 'C0230371'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Condition {id: 'C0007859'}) SET node.PREF='Neckache' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Condition {id: 'C0007859'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Temporal {id: 'C0040223'}) SET node.PREF='Time' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Temporal {id: 'C0040223'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Treatment {id: 'C0196394'}) SET node.PREF='spinal steroid injection' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Treatment {id: 'C0196394'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Temporal {id: 'C0332185'}) SET node.PREF='Recent' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Temporal {id: 'C0332185'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Treatment {id: 'C0949766'}) SET node.PREF='Physiotherapy' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Treatment {id: 'C0949766'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Condition {id: 'C0564405'}) SET node.PREF='Relief' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Condition {id: 'C0564405'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Body {id: 'C0027530'}) SET node.PREF='Collum' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Body {id: 'C0027530'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Treatment {id: 'C0024485'}) SET node.PREF='Imaging, NMR' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Treatment {id: 'C0024485'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Condition {id: 'C1444662'}) SET node.PREF='Discontinue' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Condition {id: 'C1444662'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Condition {id: 'C0019270'}) SET node.PREF='Hernia' SET node.STY='Anatomical Abnormality'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Condition {id: 'C0019270'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Body {id: 'C1305858'}) SET node.PREF='C4 innervation' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Body {id: 'C1305858'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Condition {id: 'C0019270'}) SET node.PREF='Hernia' SET node.STY='Anatomical Abnormality'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Condition {id: 'C0019270'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Body {id: 'C1305859'}) SET node.PREF='C5 innervation' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Body {id: 'C1305859'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Condition {id: 'C3843715'}) SET node.PREF='5-6' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Condition {id: 'C3843715'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Body {id: 'C1305860'}) SET node.PREF='C6 innervation' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Body {id: 'C1305860'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Condition {id: 'C0677042'}) SET node.PREF='pathology' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Condition {id: 'C0677042'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Condition {id: 'C0558095'}) SET node.PREF='Confident' SET node.STY='Individual Behavior'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Condition {id: 'C0558095'}) 
MERGE (i)-[r:IS_BEHAVIOUR]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Condition {id: 'C0549433'}) SET node.PREF='SURGICAL INTERVENTION' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Condition {id: 'C0549433'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Condition {id: 'C0564405'}) SET node.PREF='Relief' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Condition {id: 'C0564405'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Treatment {id: 'C0184661'}) SET node.PREF='Procedure' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Treatment {id: 'C0184661'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Treatment {id: 'C0543467'}) SET node.PREF='Surgery' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Treatment {id: 'C0543467'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Clinical {id: 'C0488549'}) SET node.PREF='Hospital course' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Clinical {id: 'C0488549'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Temporal {id: 'C0231290'}) SET node.PREF='Following' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Temporal {id: 'C0231290'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Treatment {id: 'C0184666'}) SET node.PREF='Admission' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Treatment {id: 'C0184666'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Treatment {id: 'C0184661'}) SET node.PREF='Procedure' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Treatment {id: 'C0184661'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Condition {id: 'C0699809'}) SET node.PREF='Carries' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Condition {id: 'C0699809'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Condition {id: 'C1299586'}) SET node.PREF='Difficult' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Condition {id: 'C1299586'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Condition {id: 'C0019080'}) SET node.PREF='Bleeding' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Condition {id: 'C0019080'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Temporal {id: 'C0032790'}) SET node.PREF='postop' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Temporal {id: 'C0032790'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Treatment {id: 'C1306645'}) SET node.PREF='Skiagram' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Treatment {id: 'C1306645'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Treatment {id: 'C0150305'}) SET node.PREF='positioning' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Treatment {id: 'C0150305'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Condition {id: 'C0241311'}) SET node.PREF='Post surgery' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Condition {id: 'C0241311'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Condition {id: 'C1299581'}) SET node.PREF='Able' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Condition {id: 'C1299581'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Condition {id: 'C0683317'}) SET node.PREF='activity level' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Condition {id: 'C0683317'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Treatment {id: 'C0949766'}) SET node.PREF='Physiotherapy' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Treatment {id: 'C0949766'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Condition {id: 'C0037763'}) SET node.PREF='Spasms' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Condition {id: 'C0037763'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Condition {id: 'C0234233'}) SET node.PREF='Soreness' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Condition {id: 'C0234233'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Body {id: 'C4019368'}) SET node.PREF='Shoulder Blade' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Body {id: 'C4019368'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Body {id: 'C0027530'}) SET node.PREF='Collum' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Body {id: 'C0027530'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Condition {id: 'C0027497'}) SET node.PREF='Nausea' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Condition {id: 'C0027497'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Treatment {id: 'C0030625'}) SET node.PREF='PCA' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Treatment {id: 'C0030625'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Condition {id: 'C0239574'}) SET node.PREF='Mild pyrexia' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Condition {id: 'C0239574'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Treatment {id: 'C0454512'}) SET node.PREF='Incentive spirometry' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Treatment {id: 'C0454512'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Temporal {id: 'C1292430'}) SET node.PREF='12 hour' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Temporal {id: 'C1292430'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Condition {id: 'C0015967'}) SET node.PREF='Fevers' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Condition {id: 'C0015967'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Condition {id: 'C3714811'}) SET node.PREF='Resolved' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Condition {id: 'C3714811'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Condition {id: 'C1299581'}) SET node.PREF='Able' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Condition {id: 'C1299581'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Temporal {id: 'C0439659'}) SET node.PREF='Origin' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Temporal {id: 'C0439659'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Drug {id: 'C3152828'}) SET node.PREF='WOUND CARE' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Drug {id: 'C3152828'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Body {id: 'C0027530'}) SET node.PREF='Collum' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Body {id: 'C0027530'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Temporal {id: 'C0439230'}) SET node.PREF='Week' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Temporal {id: 'C0439230'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Condition {id: 'C0043250'}) SET node.PREF='Wounds' SET node.STY='Injury or Poisoning'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Condition {id: 'C0043250'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Treatment {id: 'C1522577'}) SET node.PREF='Followup' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Treatment {id: 'C1522577'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Treatment {id: 'C0220825'}) SET node.PREF='Evaluate' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Treatment {id: 'C0220825'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Treatment {id: 'C0043299'}) SET node.PREF='radiology' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Treatment {id: 'C0043299'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Temporal {id: 'C0439230'}) SET node.PREF='Week' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Temporal {id: 'C0439230'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Treatment {id: 'C0033080'}) SET node.PREF='Prescription' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Treatment {id: 'C0033080'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Drug {id: 'C0553262'}) SET node.PREF='Lortab' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Drug {id: 'C0553262'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Drug {id: 'C0723103'}) SET node.PREF='robaxin 750' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Drug {id: 'C0723103'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Condition {id: 'C0751437'}) SET node.PREF='Anterior' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Condition {id: 'C0751437'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Treatment {id: 'C0408598'}) SET node.PREF='Cervical discectomy' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Treatment {id: 'C0408598'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Treatment {id: 'C1293131'}) SET node.PREF='Fusion' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Treatment {id: 'C1293131'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Body {id: 'C1305858'}) SET node.PREF='C4 innervation' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Body {id: 'C1305858'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Body {id: 'C1305859'}) SET node.PREF='C5 innervation' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Body {id: 'C1305859'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Condition {id: 'C3843715'}) SET node.PREF='5-6' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Condition {id: 'C3843715'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Body {id: 'C1305860'}) SET node.PREF='C6 innervation' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Body {id: 'C1305860'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Body {id: 'C1305858'}) SET node.PREF='C4 innervation' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Body {id: 'C1305858'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Body {id: 'C1305861'}) SET node.PREF='C7 innervation' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Body {id: 'C1305861'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Temporal {id: 'C0456904'}) SET node.PREF='Intraoperative' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Temporal {id: 'C0456904'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Treatment {id: 'C1306645'}) SET node.PREF='Skiagram' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Treatment {id: 'C1306645'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Body {id: 'C1140621'}) SET node.PREF='Leg, NOS' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Body {id: 'C1140621'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Treatment {id: 'C0184713'}) SET node.PREF='Discharge home' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Treatment {id: 'C0184713'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Treatment {id: 'C1522577'}) SET node.PREF='Followup' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Treatment {id: 'C1522577'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Treatment {id: 'C2266673'}) SET node.PREF='Discharge instructions' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Treatment {id: 'C2266673'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Temporal {id: 'C0439230'}) SET node.PREF='Week' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Temporal {id: 'C0439230'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Treatment {id: 'C0030685'}) SET node.PREF='Release' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Treatment {id: 'C0030685'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Condition {id: 'C0012634'}) SET node.PREF='Disease' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Condition {id: 'C0012634'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Treatment {id: 'C0030685'}) SET node.PREF='Release' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Treatment {id: 'C0030685'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Drug {id: 'C1123142'}) SET node.PREF='Doxycycline 100 MG' SET node.STY='Clinical Drug'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Drug {id: 'C1123142'}) 
MERGE (i)-[r:IS_ADMINISTERED]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Condition {id: 'C0343401'}) SET node.PREF='MRSA' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Condition {id: 'C0343401'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Temporal {id: 'C1547061'}) SET node.PREF='10 days' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Temporal {id: 'C1547061'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Drug {id: 'C0722364'}) SET node.PREF='OxyCONTIN' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Drug {id: 'C0722364'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Treatment {id: 'C0033080'}) SET node.PREF='Prescription' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Treatment {id: 'C0033080'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Condition {id: 'C0332798'}) SET node.PREF='Open wound' SET node.STY='Injury or Poisoning'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Condition {id: 'C0332798'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Drug {id: 'C0086787'}) SET node.PREF='Percocet' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Drug {id: 'C0086787'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Body {id: 'C0230415'}) SET node.PREF='Right leg' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Body {id: 'C0230415'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Condition {id: 'C0343401'}) SET node.PREF='MRSA' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Condition {id: 'C0343401'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Condition {id: 'C0007642'}) SET node.PREF='Cellulitis' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Condition {id: 'C0007642'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Temporal {id: 'C0439234'}) SET node.PREF='Year' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Temporal {id: 'C0439234'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Temporal {id: 'C0580836'}) SET node.PREF='Old' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Temporal {id: 'C0580836'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Temporal {id: 'C0750729'}) SET node.PREF='Course' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Temporal {id: 'C0750729'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Temporal {id: 'C0175668'}) SET node.PREF='Secondary' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Temporal {id: 'C0175668'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Body {id: 'C0230415'}) SET node.PREF='Right leg' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Body {id: 'C0230415'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Condition {id: 'C0332798'}) SET node.PREF='Open wound' SET node.STY='Injury or Poisoning'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Condition {id: 'C0332798'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Treatment {id: 'C0199168'}) SET node.PREF='Medical' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Treatment {id: 'C0199168'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Treatment {id: 'C0700287'}) SET node.PREF='Report' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Treatment {id: 'C0700287'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Condition {id: 'C1555319'}) SET node.PREF='discharge diagnosis' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Condition {id: 'C1555319'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Condition {id: 'C0332798'}) SET node.PREF='Open wound' SET node.STY='Injury or Poisoning'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Condition {id: 'C0332798'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Body {id: 'C0230415'}) SET node.PREF='Right leg' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Body {id: 'C0230415'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Condition {id: 'C0343401'}) SET node.PREF='MRSA' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Condition {id: 'C0343401'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Condition {id: 'C0007642'}) SET node.PREF='Cellulitis' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Condition {id: 'C0007642'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Treatment {id: 'C0030685'}) SET node.PREF='Release' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Treatment {id: 'C0030685'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Condition {id: 'C0011900'}) SET node.PREF='Diagnosed' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Condition {id: 'C0011900'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Condition {id: 'C0150055'}) SET node.PREF='Chronic Pain' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Condition {id: 'C0150055'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Condition {id: 'C0040335'}) SET node.PREF='Tobacco use' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Condition {id: 'C0040335'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Condition {id: 'C4040623'}) SET node.PREF='History of hepatitis C' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Condition {id: 'C4040623'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Treatment {id: 'C0184666'}) SET node.PREF='Admission' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Treatment {id: 'C0184666'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Temporal {id: 'C0439234'}) SET node.PREF='Year' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Temporal {id: 'C0439234'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Temporal {id: 'C0580836'}) SET node.PREF='Old' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Temporal {id: 'C0580836'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Temporal {id: 'C0750729'}) SET node.PREF='Course' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Temporal {id: 'C0750729'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Temporal {id: 'C0175668'}) SET node.PREF='Secondary' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Temporal {id: 'C0175668'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Body {id: 'C0230415'}) SET node.PREF='Right leg' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Body {id: 'C0230415'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Condition {id: 'C0332798'}) SET node.PREF='Open wound' SET node.STY='Injury or Poisoning'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Condition {id: 'C0332798'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Temporal {id: 'C0439590'}) SET node.PREF='Prolonged' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Temporal {id: 'C0439590'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Treatment {id: 'C0019993'}) SET node.PREF='Inpatient care' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Treatment {id: 'C0019993'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Condition {id: 'C0033213'}) SET node.PREF='Problem' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Condition {id: 'C0033213'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Temporal {id: 'C0332185'}) SET node.PREF='Recent' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Temporal {id: 'C0332185'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Treatment {id: 'C0030685'}) SET node.PREF='Release' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Treatment {id: 'C0030685'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Condition {id: 'C0038999'}) SET node.PREF='Bulging' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Condition {id: 'C0038999'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Condition {id: 'C0332575'}) SET node.PREF='Redness' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Condition {id: 'C0332575'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Body {id: 'C1140621'}) SET node.PREF='Leg, NOS' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Body {id: 'C1140621'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Treatment {id: 'C0031809'}) SET node.PREF='Physical' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Treatment {id: 'C0031809'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Org {id: 'C0562508'}) SET node.PREF='Emergency Room' SET node.STY='Health Care Related Organization'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Org {id: 'C0562508'}) 
MERGE (i)-[r:AT_LOCATION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Condition {id: 'C0007642'}) SET node.PREF='Cellulitis' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Condition {id: 'C0007642'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Condition {id: 'C0679006'}) SET node.PREF='Decision' SET node.STY='Mental Process'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Condition {id: 'C0679006'}) 
MERGE (i)-[r:IS_MENTALPROCESS]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Treatment {id: 'C0184666'}) SET node.PREF='Admission' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Treatment {id: 'C0184666'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Org {id: 'C0019994'}) SET node.PREF='Hospital' SET node.STY='Health Care Related Organization'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Org {id: 'C0019994'}) 
MERGE (i)-[r:AT_LOCATION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Clinical {id: 'C0488549'}) SET node.PREF='Hospital course' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Clinical {id: 'C0488549'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Treatment {id: 'C0184666'}) SET node.PREF='Admission' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Treatment {id: 'C0184666'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Condition {id: 'C3714655'}) SET node.PREF='On IV' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Condition {id: 'C3714655'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Drug {id: 'C0003232'}) SET node.PREF='Antibiotic' SET node.STY='Antibiotic'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Drug {id: 'C0003232'}) 
MERGE (i)-[r:IS_ADMINISTERED]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Treatment {id: 'C0439775'}) SET node.PREF='Elevation' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Treatment {id: 'C0439775'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Condition {id: 'C0700219'}) SET node.PREF='Cigarette Smoking' SET node.STY='Individual Behavior'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Condition {id: 'C0700219'}) 
MERGE (i)-[r:IS_BEHAVIOUR]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Condition {id: 'C0013604'}) SET node.PREF='Dropsy' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Condition {id: 'C0013604'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Body {id: 'C0023216'}) SET node.PREF='Hindlimb' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Body {id: 'C0023216'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Org {id: 'C0019994'}) SET node.PREF='Hospital' SET node.STY='Health Care Related Organization'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Org {id: 'C0019994'}) 
MERGE (i)-[r:AT_LOCATION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Treatment {id: 'C0009818'}) SET node.PREF='Consult' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Treatment {id: 'C0009818'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Clinical {id: 'C2741676'}) SET node.PREF='Address' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Clinical {id: 'C2741676'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Condition {id: 'C0013604'}) SET node.PREF='Dropsy' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Condition {id: 'C0013604'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Condition {id: 'C0033213'}) SET node.PREF='Problem' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Condition {id: 'C0033213'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Condition {id: 'C0445223'}) SET node.PREF='Related' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Condition {id: 'C0445223'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Body {id: 'C0023884'}) SET node.PREF='Livers' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Body {id: 'C0023884'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Condition {id: 'C0019196'}) SET node.PREF='Hepatitis C' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Condition {id: 'C0019196'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Org {id: 'C0019994'}) SET node.PREF='Hospital' SET node.STY='Health Care Related Organization'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Org {id: 'C0019994'}) 
MERGE (i)-[r:AT_LOCATION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Treatment {id: 'C0009818'}) SET node.PREF='Consult' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Treatment {id: 'C0009818'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Treatment {id: 'C0041618'}) SET node.PREF='Sonogram' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Treatment {id: 'C0041618'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Body {id: 'C0000726'}) SET node.PREF='Abdomen' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Body {id: 'C0000726'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Condition {id: 'C1513302'}) SET node.PREF='Mild' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Condition {id: 'C1513302'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Condition {id: 'C0023890'}) SET node.PREF='Cirrhosis' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Condition {id: 'C0023890'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Condition {id: 'C0581394'}) SET node.PREF='Swollen leg' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Condition {id: 'C0581394'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Condition {id: 'C0039869'}) SET node.PREF='Thought' SET node.STY='Mental Process'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Condition {id: 'C0039869'}) 
MERGE (i)-[r:IS_MENTALPROCESS]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Temporal {id: 'C0175668'}) SET node.PREF='Secondary' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Temporal {id: 'C0175668'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Temporal {id: 'C0205191'}) SET node.PREF='Chronic' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Temporal {id: 'C0205191'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Condition {id: 'C0277919'}) SET node.PREF='venostasis' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Condition {id: 'C0277919'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Body {id: 'C0023884'}) SET node.PREF='Livers' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Body {id: 'C0023884'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Condition {id: 'C3843498'}) SET node.PREF='A moderate amount' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Condition {id: 'C3843498'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Treatment {id: 'C0332293'}) SET node.PREF='Treated by' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Treatment {id: 'C0332293'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Treatment {id: 'C0021440'}) SET node.PREF='IV Infusion' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Treatment {id: 'C0021440'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Drug {id: 'C0042313'}) SET node.PREF='Vancomycin' SET node.STY='Antibiotic'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Drug {id: 'C0042313'}) 
MERGE (i)-[r:IS_ADMINISTERED]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Drug {id: 'C3152828'}) SET node.PREF='WOUND CARE' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Drug {id: 'C3152828'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Treatment {id: 'C0439775'}) SET node.PREF='Elevation' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Treatment {id: 'C0439775'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Treatment {id: 'C0565514'}) SET node.PREF='Compression' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Treatment {id: 'C0565514'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Body {id: 'C1140621'}) SET node.PREF='Leg, NOS' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Body {id: 'C1140621'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Condition {id: 'C0332575'}) SET node.PREF='Redness' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Condition {id: 'C0332575'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Condition {id: 'C0013604'}) SET node.PREF='Dropsy' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Condition {id: 'C0013604'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Temporal {id: 'C0332173'}) SET node.PREF='Per Day' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Temporal {id: 'C0332173'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Treatment {id: 'C0565514'}) SET node.PREF='Compression' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Treatment {id: 'C0565514'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Drug {id: 'C3152828'}) SET node.PREF='WOUND CARE' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Drug {id: 'C3152828'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Condition {id: 'C0039869'}) SET node.PREF='Thought' SET node.STY='Mental Process'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Condition {id: 'C0039869'}) 
MERGE (i)-[r:IS_MENTALPROCESS]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Condition {id: 'C0009450'}) SET node.PREF='Infection' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Condition {id: 'C0009450'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Treatment {id: 'C0009818'}) SET node.PREF='Consult' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Treatment {id: 'C0009818'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Treatment {id: 'C0282638'}) SET node.PREF='Antibiotic coverage' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Treatment {id: 'C0282638'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Treatment {id: 'C0054889'}) SET node.PREF='CTX/DOX/VCR' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Treatment {id: 'C0054889'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Treatment {id: 'C0019993'}) SET node.PREF='Inpatient care' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Treatment {id: 'C0019993'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Condition {id: 'C0679006'}) SET node.PREF='Decision' SET node.STY='Mental Process'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Condition {id: 'C0679006'}) 
MERGE (i)-[r:IS_MENTALPROCESS]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Condition {id: 'C0149871'}) SET node.PREF='DVT NOS' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Condition {id: 'C0149871'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Condition {id: 'C0239981'}) SET node.PREF='Hypoalbuminemia' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Condition {id: 'C0239981'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Treatment {id: 'C1521729'}) SET node.PREF='Nutrition' SET node.STY='Research Activity'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Treatment {id: 'C1521729'}) 
MERGE (i)-[r:IS_RESEARCH]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Treatment {id: 'C0054889'}) SET node.PREF='CTX/DOX/VCR' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Treatment {id: 'C0054889'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Condition {id: 'C0043250'}) SET node.PREF='Wounds' SET node.STY='Injury or Poisoning'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Condition {id: 'C0043250'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Temporal {id: 'C2746065'}) SET node.PREF='Ending' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Temporal {id: 'C2746065'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Treatment {id: 'C0030695'}) SET node.PREF='monitor' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Treatment {id: 'C0030695'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Treatment {id: 'C2148613'}) SET node.PREF='Feeding' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Treatment {id: 'C2148613'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Condition {id: 'C0149871'}) SET node.PREF='DVT NOS' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Condition {id: 'C0149871'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Treatment {id: 'C0883304'}) SET node.PREF='Placement of tube' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Treatment {id: 'C0883304'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Condition {id: 'C0000833'}) SET node.PREF='Abscess' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Condition {id: 'C0000833'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Temporal {id: 'C0332152'}) SET node.PREF='Before' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Temporal {id: 'C0332152'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Body {id: 'C0332835'}) SET node.PREF='Grafts' SET node.STY='Tissue'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Body {id: 'C0332835'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Body {id: 'C0332835'}) SET node.PREF='Grafts' SET node.STY='Tissue'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Body {id: 'C0332835'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Body {id: 'C0230425'}) SET node.PREF='R thigh' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Body {id: 'C0230425'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Treatment {id: 'C2148613'}) SET node.PREF='Feeding' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Treatment {id: 'C2148613'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Treatment {id: 'C0030685'}) SET node.PREF='Release' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Treatment {id: 'C0030685'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Treatment {id: 'C0242297'}) SET node.PREF='Supplementation' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Treatment {id: 'C0242297'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Condition {id: 'C0332798'}) SET node.PREF='Open wound' SET node.STY='Injury or Poisoning'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Condition {id: 'C0332798'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Treatment {id: 'C1521729'}) SET node.PREF='Nutrition' SET node.STY='Research Activity'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Treatment {id: 'C1521729'}) 
MERGE (i)-[r:IS_RESEARCH]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Treatment {id: 'C0030685'}) SET node.PREF='Release' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Treatment {id: 'C0030685'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Condition {id: 'C0439663'}) SET node.PREF='Infected' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Condition {id: 'C0439663'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Body {id: 'C0230425'}) SET node.PREF='R thigh' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Body {id: 'C0230425'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Body {id: 'C0225317'}) SET node.PREF='Soft Tissue' SET node.STY='Tissue'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Body {id: 'C0225317'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Treatment {id: 'C2266673'}) SET node.PREF='Discharge instructions' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Treatment {id: 'C2266673'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Treatment {id: 'C0015252'}) SET node.PREF='Removal' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Treatment {id: 'C0015252'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Temporal {id: 'C0231290'}) SET node.PREF='Following' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Temporal {id: 'C0231290'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Treatment {id: 'C0184713'}) SET node.PREF='Discharge home' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Treatment {id: 'C0184713'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Condition {id: 'C0043250'}) SET node.PREF='Wounds' SET node.STY='Injury or Poisoning'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Condition {id: 'C0043250'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Condition {id: 'C0012634'}) SET node.PREF='Disease' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Condition {id: 'C0012634'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Condition {id: 'C0009450'}) SET node.PREF='Infection' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Condition {id: 'C0009450'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Treatment {id: 'C0332293'}) SET node.PREF='Treated by' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Treatment {id: 'C0332293'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Treatment {id: 'C0015252'}) SET node.PREF='Removal' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Treatment {id: 'C0015252'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Drug {id: 'C0003232'}) SET node.PREF='Antibiotic' SET node.STY='Antibiotic'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Drug {id: 'C0003232'}) 
MERGE (i)-[r:IS_ADMINISTERED]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Condition {id: 'C0043250'}) SET node.PREF='Wounds' SET node.STY='Injury or Poisoning'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Condition {id: 'C0043250'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Condition {id: 'C0000833'}) SET node.PREF='Abscess' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Condition {id: 'C0000833'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Drug {id: 'C1171094'}) SET node.PREF='Augmentin XR' SET node.STY='Antibiotic'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Drug {id: 'C1171094'}) 
MERGE (i)-[r:IS_ADMINISTERED]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Condition {id: 'C0043250'}) SET node.PREF='Wounds' SET node.STY='Injury or Poisoning'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Condition {id: 'C0043250'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Body {id: 'C0230425'}) SET node.PREF='R thigh' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Body {id: 'C0230425'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Treatment {id: 'C0199168'}) SET node.PREF='Medical' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Treatment {id: 'C0199168'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Condition {id: 'C0043250'}) SET node.PREF='Wounds' SET node.STY='Injury or Poisoning'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Condition {id: 'C0043250'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Body {id: 'C1444716'}) SET node.PREF='Donor site' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Body {id: 'C1444716'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Condition {id: 'C0332575'}) SET node.PREF='Redness' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Condition {id: 'C0332575'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Treatment {id: 'C0700287'}) SET node.PREF='Report' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Treatment {id: 'C0700287'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Treatment {id: 'C0030685'}) SET node.PREF='Release' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Treatment {id: 'C0030685'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Condition {id: 'C0043250'}) SET node.PREF='Wounds' SET node.STY='Injury or Poisoning'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Condition {id: 'C0043250'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Body {id: 'C0332835'}) SET node.PREF='Grafts' SET node.STY='Tissue'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Body {id: 'C0332835'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Condition {id: 'C0039869'}) SET node.PREF='Thought' SET node.STY='Mental Process'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Condition {id: 'C0039869'}) 
MERGE (i)-[r:IS_MENTALPROCESS]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Condition {id: 'C0011900'}) SET node.PREF='Diagnosed' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Condition {id: 'C0011900'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Treatment {id: 'C0037297'}) SET node.PREF='Skin graft' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Treatment {id: 'C0037297'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Body {id: 'C1515974'}) SET node.PREF='Location' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Body {id: 'C1515974'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Clinical {id: 'C1316572'}) SET node.PREF='Note' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Clinical {id: 'C1316572'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Treatment {id: 'C0152053'}) SET node.PREF='Dressing' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Treatment {id: 'C0152053'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Condition {id: 'C0000833'}) SET node.PREF='Abscess' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Condition {id: 'C0000833'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Treatment {id: 'C0041618'}) SET node.PREF='Sonogram' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Treatment {id: 'C0041618'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Condition {id: 'C3272283'}) SET node.PREF='High Risk' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Condition {id: 'C3272283'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Org {id: 'C0019859'}) SET node.PREF='Home Health' SET node.STY='Health Care Related Organization'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Org {id: 'C0019859'}) 
MERGE (i)-[r:AT_LOCATION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Body {id: 'C0230425'}) SET node.PREF='R thigh' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Body {id: 'C0230425'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Condition {id: 'C0043250'}) SET node.PREF='Wounds' SET node.STY='Injury or Poisoning'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Condition {id: 'C0043250'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Condition {id: 'C1513916'}) SET node.PREF='Negative' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Condition {id: 'C1513916'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Treatment {id: 'C0332293'}) SET node.PREF='Treated by' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Treatment {id: 'C0332293'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Condition {id: 'C0332798'}) SET node.PREF='Open wound' SET node.STY='Injury or Poisoning'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Condition {id: 'C0332798'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Condition {id: 'C0002895'}) SET node.PREF='HbS Disease' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Condition {id: 'C0002895'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Treatment {id: 'C1522577'}) SET node.PREF='Followup' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Treatment {id: 'C1522577'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Body {id: 'C0230425'}) SET node.PREF='R thigh' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Body {id: 'C0230425'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Org {id: 'C0029064'}) SET node.PREF='Operating Room' SET node.STY='Health Care Related Organization'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Org {id: 'C0029064'}) 
MERGE (i)-[r:AT_LOCATION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Temporal {id: 'C0231290'}) SET node.PREF='Following' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Temporal {id: 'C0231290'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Condition {id: 'C0039869'}) SET node.PREF='Thought' SET node.STY='Mental Process'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Condition {id: 'C0039869'}) 
MERGE (i)-[r:IS_MENTALPROCESS]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Treatment {id: 'C0015252'}) SET node.PREF='Removal' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Treatment {id: 'C0015252'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Body {id: 'C0332835'}) SET node.PREF='Grafts' SET node.STY='Tissue'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Body {id: 'C0332835'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Condition {id: 'C0000833'}) SET node.PREF='Abscess' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Condition {id: 'C0000833'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Treatment {id: 'C0037297'}) SET node.PREF='Skin graft' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Treatment {id: 'C0037297'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Body {id: 'C0230425'}) SET node.PREF='R thigh' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Body {id: 'C0230425'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Body {id: 'C0230425'}) SET node.PREF='R thigh' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Body {id: 'C0230425'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Treatment {id: 'C3472433'}) SET node.PREF='Debridement of soft tissue' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Treatment {id: 'C3472433'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Body {id: 'C0019552'}) SET node.PREF='Hip, NOS' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Body {id: 'C0019552'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Body {id: 'C0039866'}) SET node.PREF='Thighs' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Body {id: 'C0039866'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Condition {id: 'C0332798'}) SET node.PREF='Open wound' SET node.STY='Injury or Poisoning'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Condition {id: 'C0332798'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Body {id: 'C0019552'}) SET node.PREF='Hip, NOS' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Body {id: 'C0019552'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Body {id: 'C1444716'}) SET node.PREF='Donor site' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Body {id: 'C1444716'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Body {id: 'C0225317'}) SET node.PREF='Soft Tissue' SET node.STY='Tissue'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Body {id: 'C0225317'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Treatment {id: 'C0011079'}) SET node.PREF='Debridement' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Treatment {id: 'C0011079'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Temporal {id: 'C2746065'}) SET node.PREF='Ending' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Temporal {id: 'C2746065'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Body {id: 'C0230425'}) SET node.PREF='R thigh' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Body {id: 'C0230425'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Treatment {id: 'C0037297'}) SET node.PREF='Skin graft' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Treatment {id: 'C0037297'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Body {id: 'C0019552'}) SET node.PREF='Hip, NOS' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Body {id: 'C0019552'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Condition {id: 'C1299582'}) SET node.PREF='Unable' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Condition {id: 'C1299582'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Treatment {id: 'C0439061'}) SET node.PREF='Split skin graft' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Treatment {id: 'C0439061'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Condition {id: 'C3714655'}) SET node.PREF='On IV' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Condition {id: 'C3714655'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Body {id: 'C0230425'}) SET node.PREF='R thigh' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Body {id: 'C0230425'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Body {id: 'C1268233'}) SET node.PREF='Right hip' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Body {id: 'C1268233'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Condition {id: 'C0332798'}) SET node.PREF='Open wound' SET node.STY='Injury or Poisoning'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Condition {id: 'C0332798'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Treatment {id: 'C0184666'}) SET node.PREF='Admission' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Treatment {id: 'C0184666'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Temporal {id: 'C0439234'}) SET node.PREF='Year' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Temporal {id: 'C0439234'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Temporal {id: 'C0580836'}) SET node.PREF='Old' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Temporal {id: 'C0580836'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Condition {id: 'C0262926'}) SET node.PREF='History' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Condition {id: 'C0262926'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:THING {id: 'C0242510'}) SET node.PREF='Drug use' SET node.STY='Mental or Behavioral Dysfunction'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:THING {id: 'C0242510'}) 
MERGE (i)-[r:RELATED]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Condition {id: 'C0262926'}) SET node.PREF='History' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Condition {id: 'C0262926'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Treatment {id: 'C0021485'}) SET node.PREF='Shot' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Treatment {id: 'C0021485'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Drug {id: 'C0011892'}) SET node.PREF='Heroin' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Drug {id: 'C0011892'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Body {id: 'C0039866'}) SET node.PREF='Thighs' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Body {id: 'C0039866'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Temporal {id: 'C0205191'}) SET node.PREF='Chronic' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Temporal {id: 'C0205191'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Condition {id: 'C0000833'}) SET node.PREF='Abscess' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Condition {id: 'C0000833'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Condition {id: 'C0332798'}) SET node.PREF='Open wound' SET node.STY='Injury or Poisoning'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Condition {id: 'C0332798'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Body {id: 'C0039866'}) SET node.PREF='Thighs' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Body {id: 'C0039866'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Drug {id: 'C0003232'}) SET node.PREF='Antibiotic' SET node.STY='Antibiotic'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Drug {id: 'C0003232'}) 
MERGE (i)-[r:IS_ADMINISTERED]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Condition {id: 'C3841448'}) SET node.PREF='Much Worse' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Condition {id: 'C3841448'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Treatment {id: 'C0004910'}) SET node.PREF='Bedrest' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Treatment {id: 'C0004910'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Condition {id: 'C0679006'}) SET node.PREF='Decision' SET node.STY='Mental Process'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Condition {id: 'C0679006'}) 
MERGE (i)-[r:IS_MENTALPROCESS]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Condition {id: 'C0231589'}) SET node.PREF='Limited range of motion' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Condition {id: 'C0231589'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Treatment {id: 'C0184918'}) SET node.PREF='Radical excision' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Treatment {id: 'C0184918'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Body {id: 'C0019552'}) SET node.PREF='Hip, NOS' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Body {id: 'C0019552'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Temporal {id: 'C0332282'}) SET node.PREF='Following' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Temporal {id: 'C0332282'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Treatment {id: 'C0524865'}) SET node.PREF='Reconstruction' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Treatment {id: 'C0524865'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Treatment {id: 'C0152053'}) SET node.PREF='Dressing' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Treatment {id: 'C0152053'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Body {id: 'C0332835'}) SET node.PREF='Grafts' SET node.STY='Tissue'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Body {id: 'C0332835'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Clinical {id: 'C0488549'}) SET node.PREF='Hospital course' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Clinical {id: 'C0488549'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Treatment {id: 'C0087111'}) SET node.PREF='Therapy' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Treatment {id: 'C0087111'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Treatment {id: 'C0041618'}) SET node.PREF='Sonogram' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Treatment {id: 'C0041618'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Condition {id: 'C1513916'}) SET node.PREF='Negative' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Condition {id: 'C1513916'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Treatment {id: 'C0184666'}) SET node.PREF='Admission' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Treatment {id: 'C0184666'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Org {id: 'C0029064'}) SET node.PREF='Operating Room' SET node.STY='Health Care Related Organization'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Org {id: 'C0029064'}) 
MERGE (i)-[r:AT_LOCATION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Treatment {id: 'C0015252'}) SET node.PREF='Removal' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Treatment {id: 'C0015252'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Condition {id: 'C0578718'}) SET node.PREF='Mobilises' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Condition {id: 'C0578718'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Condition {id: 'C0000833'}) SET node.PREF='Abscess' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Condition {id: 'C0000833'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Condition {id: 'C0009450'}) SET node.PREF='Infection' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Condition {id: 'C0009450'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Drug {id: 'C0011892'}) SET node.PREF='Heroin' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Drug {id: 'C0011892'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Temporal {id: 'C1547061'}) SET node.PREF='10 days' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Temporal {id: 'C1547061'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Condition {id: 'C0332798'}) SET node.PREF='Open wound' SET node.STY='Injury or Poisoning'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Condition {id: 'C0332798'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Body {id: 'C0230425'}) SET node.PREF='R thigh' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Body {id: 'C0230425'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Body {id: 'C0019552'}) SET node.PREF='Hip, NOS' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Body {id: 'C0019552'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Temporal {id: 'C0439590'}) SET node.PREF='Prolonged' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Temporal {id: 'C0439590'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Drug {id: 'C0003232'}) SET node.PREF='Antibiotic' SET node.STY='Antibiotic'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Drug {id: 'C0003232'}) 
MERGE (i)-[r:IS_ADMINISTERED]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Clinical {id: 'C0488549'}) SET node.PREF='Hospital course' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Clinical {id: 'C0488549'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Temporal {id: 'C3871203'}) SET node.PREF='At discharge' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Temporal {id: 'C3871203'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Body {id: 'C0226896'}) SET node.PREF='Orally' SET node.STY='Body Space or Junction'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Body {id: 'C0226896'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Temporal {id: 'C0205265'}) SET node.PREF='Initial' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Temporal {id: 'C0205265'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Treatment {id: 'C0332293'}) SET node.PREF='Treated by' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Treatment {id: 'C0332293'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Drug {id: 'C3152828'}) SET node.PREF='WOUND CARE' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Drug {id: 'C3152828'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Drug {id: 'C0003232'}) SET node.PREF='Antibiotic' SET node.STY='Antibiotic'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Drug {id: 'C0003232'}) 
MERGE (i)-[r:IS_ADMINISTERED]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Treatment {id: 'C0332293'}) SET node.PREF='Treated by' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Treatment {id: 'C0332293'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Treatment {id: 'C0030695'}) SET node.PREF='monitor' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Treatment {id: 'C0030695'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Treatment {id: 'C0184661'}) SET node.PREF='Procedure' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Treatment {id: 'C0184661'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Condition {id: 'C0021368'}) SET node.PREF='Inflammation' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Condition {id: 'C0021368'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Condition {id: 'C2700617'}) SET node.PREF='Irritation' SET node.STY='Mental Process'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Condition {id: 'C2700617'}) 
MERGE (i)-[r:IS_MENTALPROCESS]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Drug {id: 'C0003232'}) SET node.PREF='Antibiotic' SET node.STY='Antibiotic'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Drug {id: 'C0003232'}) 
MERGE (i)-[r:IS_ADMINISTERED]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Condition {id: 'C0009450'}) SET node.PREF='Infection' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Condition {id: 'C0009450'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Temporal {id: 'C2746065'}) SET node.PREF='Ending' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Temporal {id: 'C2746065'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Treatment {id: 'C0282638'}) SET node.PREF='Antibiotic coverage' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Treatment {id: 'C0282638'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Body {id: 'C0003501'}) SET node.PREF='Aortic Valve' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Body {id: 'C0003501'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Treatment {id: 'C0184666'}) SET node.PREF='Admission' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Treatment {id: 'C0184666'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Org {id: 'C0021708'}) SET node.PREF='I.C.U.' SET node.STY='Health Care Related Organization'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Org {id: 'C0021708'}) 
MERGE (i)-[r:AT_LOCATION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Body {id: 'C0024109'}) SET node.PREF='Pulmones' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Body {id: 'C0024109'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Treatment {id: 'C0010337'}) SET node.PREF='Critical Care' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Treatment {id: 'C0010337'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Treatment {id: 'C0441640'}) SET node.PREF='Tapering' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Treatment {id: 'C0441640'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Treatment {id: 'C0021440'}) SET node.PREF='IV Infusion' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Treatment {id: 'C0021440'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Body {id: 'C0022646'}) SET node.PREF='Kidney' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Body {id: 'C0022646'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Treatment {id: 'C0201975'}) SET node.PREF='Creatinine' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Treatment {id: 'C0201975'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Treatment {id: 'C0189897'}) SET node.PREF='Left heart cardiac cath' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Treatment {id: 'C0189897'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Body {id: 'C0022646'}) SET node.PREF='Kidney' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Body {id: 'C0022646'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
ERROR: Experiencer is not Patient: Other
MERGE (node:Treatment {id: 'C0007430'}) SET node.PREF='catheterise' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Treatment {id: 'C0007430'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
ERROR: Experiencer is not Patient: Other
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Treatment {id: 'C0039451'}) SET node.PREF='Telemetry' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Treatment {id: 'C0039451'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:THING {id: 'C3714591'}) SET node.PREF='Floor' SET node.STY='Anatomical Structure'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:THING {id: 'C3714591'}) 
MERGE (i)-[r:RELATED]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Treatment {id: 'C0039451'}) SET node.PREF='Telemetry' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Treatment {id: 'C0039451'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:THING {id: 'C3714591'}) SET node.PREF='Floor' SET node.STY='Anatomical Structure'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:THING {id: 'C3714591'}) 
MERGE (i)-[r:RELATED]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Body {id: 'C0022646'}) SET node.PREF='Kidney' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Body {id: 'C0022646'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Condition {id: 'C1457868'}) SET node.PREF='Worsens' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Condition {id: 'C1457868'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Temporal {id: 'C0439228'}) SET node.PREF='Day' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Temporal {id: 'C0439228'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Condition {id: 'C0027498'}) SET node.PREF='Nausea/vomiting' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Condition {id: 'C0027498'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Condition {id: 'C1299582'}) SET node.PREF='Unable' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Condition {id: 'C1299582'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Condition {id: 'C1321013'}) SET node.PREF='Hydration' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Condition {id: 'C1321013'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Condition {id: 'C0748355'}) SET node.PREF='Acute respiratory distress' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Condition {id: 'C0748355'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Treatment {id: 'C0021925'}) SET node.PREF='Intubation' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Treatment {id: 'C0021925'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Condition {id: 'C0700198'}) SET node.PREF='Aspiration' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Condition {id: 'C0700198'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Condition {id: 'C0264490'}) SET node.PREF='Acute respiratry failure' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Condition {id: 'C0264490'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Condition {id: 'C0006266'}) SET node.PREF='Bronchospasm' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Condition {id: 'C0006266'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Treatment {id: 'C1306645'}) SET node.PREF='Skiagram' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Treatment {id: 'C1306645'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Body {id: 'C1527391'}) SET node.PREF='Chest region' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Body {id: 'C1527391'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Condition {id: 'C0012359'}) SET node.PREF='Ectasia' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Condition {id: 'C0012359'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Condition {id: 'C0038354'}) SET node.PREF='Stomach' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Condition {id: 'C0038354'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Org {id: 'C0021708'}) SET node.PREF='I.C.U.' SET node.STY='Health Care Related Organization'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Org {id: 'C0021708'}) 
MERGE (i)-[r:AT_LOCATION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Condition {id: 'C0264490'}) SET node.PREF='Acute respiratry failure' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Condition {id: 'C0264490'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Treatment {id: 'C0010337'}) SET node.PREF='Critical Care' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Treatment {id: 'C0010337'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Temporal {id: 'C0439583'}) SET node.PREF='Overnight' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Temporal {id: 'C0439583'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Condition {id: 'C0012634'}) SET node.PREF='Disease' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Condition {id: 'C0012634'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Condition {id: 'C0242184'}) SET node.PREF='Hypoxia' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Condition {id: 'C0242184'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Temporal {id: 'C0332170'}) SET node.PREF='Morning' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Temporal {id: 'C0332170'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Condition {id: 'C0264490'}) SET node.PREF='Acute respiratry failure' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Condition {id: 'C0264490'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Condition {id: 'C0024117'}) SET node.PREF='COPD NOS' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Condition {id: 'C0024117'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Condition {id: 'C0024117'}) SET node.PREF='COPD NOS' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Condition {id: 'C0024117'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Treatment {id: 'C0201930'}) SET node.PREF='Carbon Dioxide' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Treatment {id: 'C0201930'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Condition {id: 'C0018802'}) SET node.PREF='CHF NOS' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Condition {id: 'C0018802'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Condition {id: 'C0024117'}) SET node.PREF='COPD NOS' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Condition {id: 'C0024117'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Condition {id: 'C1306577'}) SET node.PREF='Has died' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Condition {id: 'C1306577'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Temporal {id: 'C0439234'}) SET node.PREF='Year' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Temporal {id: 'C0439234'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Temporal {id: 'C0580836'}) SET node.PREF='Old' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Temporal {id: 'C0580836'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Condition {id: 'C0262926'}) SET node.PREF='History' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Condition {id: 'C0262926'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Treatment {id: 'C0199168'}) SET node.PREF='Medical' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Treatment {id: 'C0199168'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Treatment {id: 'C0700287'}) SET node.PREF='Report' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Treatment {id: 'C0700287'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Condition {id: 'C0007465'}) SET node.PREF='Death Cause' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Condition {id: 'C0007465'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Condition {id: 'C0264490'}) SET node.PREF='Acute respiratry failure' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Condition {id: 'C0264490'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Condition {id: 'C0024117'}) SET node.PREF='COPD NOS' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Condition {id: 'C0024117'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Condition {id: 'C0235874'}) SET node.PREF='Disease Exacerbation' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Condition {id: 'C0235874'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Condition {id: 'C0027627'}) SET node.PREF='Metastases' SET node.STY='Neoplastic Process'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Condition {id: 'C0027627'}) 
MERGE (i)-[r:IS_NEOPLASTIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Condition {id: 'C0011900'}) SET node.PREF='Diagnosed' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Condition {id: 'C0011900'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Condition {id: 'C0264490'}) SET node.PREF='Acute respiratry failure' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Condition {id: 'C0264490'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Condition {id: 'C1281999'}) SET node.PREF='Rapid atrial fibrillation' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Condition {id: 'C1281999'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Condition {id: 'C1457868'}) SET node.PREF='Worsens' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Condition {id: 'C1457868'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Condition {id: 'C0748243'}) SET node.PREF='rapid response ventricular' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Condition {id: 'C0748243'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Temporal {id: 'C0702093'}) SET node.PREF='/minute' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Temporal {id: 'C0702093'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Treatment {id: 'C0220787'}) SET node.PREF='Aspiration' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Treatment {id: 'C0220787'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Condition {id: 'C0740304'}) SET node.PREF='copd exacerbation' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Condition {id: 'C0740304'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Condition {id: 'C0403462'}) SET node.PREF='Acute on chronic renal failure' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Condition {id: 'C0403462'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Condition {id: 'C1281999'}) SET node.PREF='Rapid atrial fibrillation' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Condition {id: 'C1281999'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Condition {id: 'C0542269'}) SET node.PREF='nqmi' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Condition {id: 'C0542269'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Condition {id: 'C0149726'}) SET node.PREF='Lung Mass' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Condition {id: 'C0149726'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Condition {id: 'C0741975'}) SET node.PREF='carotid disease' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Condition {id: 'C0741975'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Clinical {id: 'C0018810'}) SET node.PREF='Heart Rate' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Clinical {id: 'C0018810'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Condition {id: 'C0020538'}) SET node.PREF='Hyperpiesia' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Condition {id: 'C0020538'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Condition {id: 'C2911690'}) SET node.PREF='Controlled' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Condition {id: 'C2911690'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Condition {id: 'C0085096'}) SET node.PREF='Peripheral Angiopathy' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Condition {id: 'C0085096'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Treatment {id: 'C0021440'}) SET node.PREF='IV Infusion' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Treatment {id: 'C0021440'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Drug {id: 'C0700940'}) SET node.PREF='Cardizem' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Drug {id: 'C0700940'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Clinical {id: 'C0488549'}) SET node.PREF='Hospital course' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Clinical {id: 'C0488549'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Treatment {id: 'C0523952'}) SET node.PREF='Troponin' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Treatment {id: 'C0523952'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Temporal {id: 'C0439234'}) SET node.PREF='Year' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Temporal {id: 'C0439234'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Condition {id: 'C0860155'}) SET node.PREF='mi non q wave' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Condition {id: 'C0860155'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Temporal {id: 'C0580836'}) SET node.PREF='Old' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Temporal {id: 'C0580836'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Condition {id: 'C0040671'}) SET node.PREF='Transfer' SET node.STY='Mental Process'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Condition {id: 'C0040671'}) 
MERGE (i)-[r:IS_MENTALPROCESS]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Condition {id: 'C0262926'}) SET node.PREF='History' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Condition {id: 'C0262926'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Treatment {id: 'C0007430'}) SET node.PREF='catheterise' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Treatment {id: 'C0007430'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Temporal {id: 'C2945760'}) SET node.PREF='Relapse' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Temporal {id: 'C2945760'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Treatment {id: 'C0184666'}) SET node.PREF='Admission' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Treatment {id: 'C0184666'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Temporal {id: 'C1444637'}) SET node.PREF='In the past' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Temporal {id: 'C1444637'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Treatment {id: 'C0220825'}) SET node.PREF='Evaluate' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Treatment {id: 'C0220825'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Temporal {id: 'C0439231'}) SET node.PREF='Month' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Temporal {id: 'C0439231'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Condition {id: 'C0010054'}) SET node.PREF='Cardiac sclerosis' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Condition {id: 'C0010054'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Treatment {id: 'C0013516'}) SET node.PREF='Cardiac echo' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Treatment {id: 'C0013516'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Condition {id: 'C1535947'}) SET node.PREF='NORMAL EJECTION FRACTION' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Condition {id: 'C1535947'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Treatment {id: 'C0184666'}) SET node.PREF='Admission' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Treatment {id: 'C0184666'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Treatment {id: 'C0030685'}) SET node.PREF='Release' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Treatment {id: 'C0030685'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Condition {id: 'C1550457'}) SET node.PREF='Normal' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Condition {id: 'C1550457'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Condition {id: 'C0264491'}) SET node.PREF='Acute & chronc resp fail' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Condition {id: 'C0264491'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Temporal {id: 'C0205390'}) SET node.PREF='Phased' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Temporal {id: 'C0205390'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Treatment {id: 'C0087111'}) SET node.PREF='Therapy' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Treatment {id: 'C0087111'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Drug {id: 'C2356088'}) SET node.PREF='Halls' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Drug {id: 'C2356088'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Treatment {id: 'C0454361'}) SET node.PREF='leg exercise' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Treatment {id: 'C0454361'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0028754'}) SET node.PREF='Obesity' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0028754'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Body {id: 'C0016504'}) SET node.PREF='Foot, NOS' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Body {id: 'C0016504'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C1262477'}) SET node.PREF='Weight Loss' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C1262477'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0543488'}) SET node.PREF='Interest' SET node.STY='Mental Process'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0543488'}) 
MERGE (i)-[r:IS_MENTALPROCESS]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Treatment {id: 'C0009818'}) SET node.PREF='Consult' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Treatment {id: 'C0009818'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Drug {id: 'C0220892'}) SET node.PREF='Penicillin' SET node.STY='Antibiotic'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Drug {id: 'C0220892'}) 
MERGE (i)-[r:IS_ADMINISTERED]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Drug {id: 'C0002645'}) SET node.PREF='Amoxicillin' SET node.STY='Antibiotic'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Drug {id: 'C0002645'}) 
MERGE (i)-[r:IS_ADMINISTERED]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Drug {id: 'C0013090'}) SET node.PREF='Doxycycline' SET node.STY='Antibiotic'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Drug {id: 'C0013090'}) 
MERGE (i)-[r:IS_ADMINISTERED]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Treatment {id: 'C0203108'}) SET node.PREF='pyelogram' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Treatment {id: 'C0203108'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Drug {id: 'C0021968'}) SET node.PREF='Iodine' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Drug {id: 'C0021968'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0042109'}) SET node.PREF='Hives NOS' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0042109'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0042109'}) SET node.PREF='Hives NOS' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0042109'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Drug {id: 'C2728193'}) SET node.PREF='MANGO' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Drug {id: 'C2728193'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0017168'}) SET node.PREF='Acid Reflux' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0017168'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Body {id: 'C1512338'}) SET node.PREF='HEENT' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Body {id: 'C1512338'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Drug {id: 'C2947996'}) SET node.PREF='Perform' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Drug {id: 'C2947996'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Temporal {id: 'C0332173'}) SET node.PREF='Per Day' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Temporal {id: 'C0332173'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Temporal {id: 'C0175668'}) SET node.PREF='Secondary' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Temporal {id: 'C0175668'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0740418'}) SET node.PREF='Chronic back pain' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0740418'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Treatment {id: 'C0199168'}) SET node.PREF='Medical' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Treatment {id: 'C0199168'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Treatment {id: 'C0700287'}) SET node.PREF='Report' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Treatment {id: 'C0700287'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0277786'}) SET node.PREF='Complaint' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0277786'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Drug {id: 'C2947996'}) SET node.PREF='Perform' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Drug {id: 'C2947996'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Temporal {id: 'C0332173'}) SET node.PREF='Per Day' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Temporal {id: 'C0332173'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Temporal {id: 'C0175668'}) SET node.PREF='Secondary' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Temporal {id: 'C0175668'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0740418'}) SET node.PREF='Chronic back pain' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0740418'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Clinical {id: 'C0488508'}) SET node.PREF='History of present illness' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Clinical {id: 'C0488508'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Temporal {id: 'C0439234'}) SET node.PREF='Year' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Temporal {id: 'C0439234'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Temporal {id: 'C0580836'}) SET node.PREF='Old' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Temporal {id: 'C0580836'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Treatment {id: 'C0184666'}) SET node.PREF='Admission' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Treatment {id: 'C0184666'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0699896'}) SET node.PREF='Acute back pain' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0699896'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0747307'}) SET node.PREF='Patient reported' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0747307'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Temporal {id: 'C0205191'}) SET node.PREF='Chronic' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Temporal {id: 'C0205191'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0033213'}) SET node.PREF='Problem' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0033213'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0004604'}) SET node.PREF='Backache' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0004604'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Temporal {id: 'C0439234'}) SET node.PREF='Year' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Temporal {id: 'C0439234'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C1457868'}) SET node.PREF='Worsens' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C1457868'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Temporal {id: 'C0332173'}) SET node.PREF='Per Day' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Temporal {id: 'C0332173'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C1272751'}) SET node.PREF='Does' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C1272751'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Temporal {id: 'C0585020'}) SET node.PREF='Midday' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Temporal {id: 'C0585020'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Treatment {id: 'C0700287'}) SET node.PREF='Report' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Treatment {id: 'C0700287'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0238740'}) SET node.PREF='back pain severe' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0238740'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0560046'}) SET node.PREF='Unable to Walk' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0560046'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0596013'}) SET node.PREF='Stands' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0596013'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Org {id: 'C0019994'}) SET node.PREF='Hospital' SET node.STY='Health Care Related Organization'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Org {id: 'C0019994'}) 
MERGE (i)-[r:AT_LOCATION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Org {id: 'C0562508'}) SET node.PREF='Emergency Room' SET node.STY='Health Care Related Organization'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Org {id: 'C0562508'}) 
MERGE (i)-[r:AT_LOCATION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Treatment {id: 'C0220825'}) SET node.PREF='Evaluate' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Treatment {id: 'C0220825'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Treatment {id: 'C0184666'}) SET node.PREF='Admission' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Treatment {id: 'C0184666'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Treatment {id: 'C0332293'}) SET node.PREF='Treated by' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Treatment {id: 'C0332293'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Treatment {id: 'C0021440'}) SET node.PREF='IV Infusion' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Treatment {id: 'C0021440'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Drug {id: 'C0002771'}) SET node.PREF='Anodynes' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Drug {id: 'C0002771'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Drug {id: 'C0740057'}) SET node.PREF='Decadron' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Drug {id: 'C0740057'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Treatment {id: 'C0220825'}) SET node.PREF='Evaluate' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Treatment {id: 'C0220825'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Treatment {id: 'C0949766'}) SET node.PREF='Physiotherapy' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Treatment {id: 'C0949766'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C1299582'}) SET node.PREF='Unable' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C1299582'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Drug {id: 'C2947996'}) SET node.PREF='Perform' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Drug {id: 'C2947996'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Treatment {id: 'C0018747'}) SET node.PREF='HEALTH SERV' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Treatment {id: 'C0018747'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0011900'}) SET node.PREF='Diagnosed' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0011900'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0004604'}) SET node.PREF='Backache' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0004604'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Temporal {id: 'C0175668'}) SET node.PREF='Secondary' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Temporal {id: 'C0175668'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Body {id: 'C0024090'}) SET node.PREF='Lumbar' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Body {id: 'C0024090'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Body {id: 'C1556138'}) SET node.PREF='Disc' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Body {id: 'C1556138'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0012634'}) SET node.PREF='Disease' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0012634'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Temporal {id: 'C0175668'}) SET node.PREF='Secondary' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Temporal {id: 'C0175668'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0011164'}) SET node.PREF='Degeneration' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0011164'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0747307'}) SET node.PREF='Patient reported' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0747307'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0242362'}) SET node.PREF='Bulging disk' SET node.STY='Acquired Abnormality'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0242362'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Temporal {id: 'C0439234'}) SET node.PREF='Year' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Temporal {id: 'C0439234'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Treatment {id: 'C0700287'}) SET node.PREF='Report' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Treatment {id: 'C0700287'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0262926'}) SET node.PREF='History' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0262926'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0153594'}) SET node.PREF='Testis Cancer' SET node.STY='Neoplastic Process'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0153594'}) 
MERGE (i)-[r:IS_NEOPLASTIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Temporal {id: 'C1444637'}) SET node.PREF='In the past' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Temporal {id: 'C1444637'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Temporal {id: 'C1513491'}) SET node.PREF='Most Recent' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Temporal {id: 'C1513491'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Treatment {id: 'C0203668'}) SET node.PREF='Bone Scan' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Treatment {id: 'C0203668'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C1513916'}) SET node.PREF='Negative' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C1513916'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Treatment {id: 'C0203668'}) SET node.PREF='Bone Scan' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Treatment {id: 'C0203668'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Org {id: 'C0019994'}) SET node.PREF='Hospital' SET node.STY='Health Care Related Organization'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Org {id: 'C0019994'}) 
MERGE (i)-[r:AT_LOCATION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0020517'}) SET node.PREF='Allergy' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0020517'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Drug {id: 'C3536856'}) SET node.PREF='Cephalosporin' SET node.STY='Antibiotic'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Drug {id: 'C3536856'}) 
MERGE (i)-[r:IS_ADMINISTERED]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Drug {id: 'C0749139'}) SET node.PREF='sulfa' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Drug {id: 'C0749139'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0747307'}) SET node.PREF='Patient reported' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0747307'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Drug {id: 'C3257527'}) SET node.PREF='Mango' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Drug {id: 'C3257527'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0262926'}) SET node.PREF='History' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0262926'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Temporal {id: 'C0231290'}) SET node.PREF='Following' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Temporal {id: 'C0231290'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Treatment {id: 'C0029189'}) SET node.PREF='Castration' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Treatment {id: 'C0029189'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Temporal {id: 'C0175668'}) SET node.PREF='Secondary' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Temporal {id: 'C0175668'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0153594'}) SET node.PREF='Testis Cancer' SET node.STY='Neoplastic Process'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0153594'}) 
MERGE (i)-[r:IS_NEOPLASTIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0022104'}) SET node.PREF='Colon spasm' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0022104'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C2919352'}) SET node.PREF='Seasonal asthma' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C2919352'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0085639'}) SET node.PREF='Falling' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0085639'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Temporal {id: 'C0241232'}) SET node.PREF='Spring' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Temporal {id: 'C0241232'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0032781'}) SET node.PREF='Postnasal Drip' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0032781'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0262926'}) SET node.PREF='History' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0262926'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C3864035'}) SET node.PREF='Bilateral carpal tunnel syndrome' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C3864035'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Temporal {id: 'C0231290'}) SET node.PREF='Following' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Temporal {id: 'C0231290'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Temporal {id: 'C3534465'}) SET node.PREF='post excision' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Temporal {id: 'C3534465'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Treatment {id: 'C0015252'}) SET node.PREF='Removal' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Treatment {id: 'C0015252'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Body {id: 'C0000726'}) SET node.PREF='Abdomen' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Body {id: 'C0000726'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C3864035'}) SET node.PREF='Bilateral carpal tunnel syndrome' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C3864035'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0039538'}) SET node.PREF='Teratoma' SET node.STY='Neoplastic Process'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0039538'}) 
MERGE (i)-[r:IS_NEOPLASTIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0262926'}) SET node.PREF='History' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0262926'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0156145'}) SET node.PREF='Incisional hernia' SET node.STY='Acquired Abnormality'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0156145'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0014544'}) SET node.PREF='Epilepsy' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0014544'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Treatment {id: 'C0700287'}) SET node.PREF='Report' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Treatment {id: 'C0700287'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
ERROR: Experiencer is not Patient: Other
MERGE (node:Condition {id: 'C0241889'}) SET node.PREF='FH: NOS' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0241889'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0424945'}) SET node.PREF='Social history' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0424945'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0012833'}) SET node.PREF='Dizziness' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0012833'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Temporal {id: 'C1279919'}) SET node.PREF='Earlier' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Temporal {id: 'C1279919'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0557351'}) SET node.PREF='In work' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0557351'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C3714811'}) SET node.PREF='Resolved' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C3714811'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0337672'}) SET node.PREF='nonsmoker' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0337672'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Treatment {id: 'C0031809'}) SET node.PREF='Physical' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Treatment {id: 'C0031809'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C1272751'}) SET node.PREF='Does' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C1272751'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Clinical {id: 'C0488614'}) SET node.PREF='Vital signs' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Clinical {id: 'C0488614'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Temporal {id: 'C0040223'}) SET node.PREF='Time' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Temporal {id: 'C0040223'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Drug {id: 'C0001962'}) SET node.PREF='Alcohol' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Drug {id: 'C0001962'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Treatment {id: 'C0184666'}) SET node.PREF='Admission' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Treatment {id: 'C0184666'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Temporal {id: 'C0680190'}) SET node.PREF='weekend' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Temporal {id: 'C0680190'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Temporal {id: 'C0332173'}) SET node.PREF='Per Day' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Temporal {id: 'C0332173'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Treatment {id: 'C0005824'}) SET node.PREF='Blood pressure taking' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Treatment {id: 'C0005824'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Temporal {id: 'C0680190'}) SET node.PREF='weekend' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Temporal {id: 'C0680190'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Treatment {id: 'C0034107'}) SET node.PREF='Pulses' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Treatment {id: 'C0034107'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C3242635'}) SET node.PREF='IV drug use' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C3242635'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Treatment {id: 'C0523807'}) SET node.PREF='Oximetry' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Treatment {id: 'C0523807'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0562381'}) SET node.PREF='Abuse, NOS' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0562381'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Temporal {id: 'C2709070'}) SET node.PREF='on room air' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Temporal {id: 'C2709070'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Clinical {id: 'C0488564'}) SET node.PREF='Review of systems' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Clinical {id: 'C0488564'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0085593'}) SET node.PREF='Chills' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0085593'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Body {id: 'C0016504'}) SET node.PREF='Foot, NOS' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Body {id: 'C0016504'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0015967'}) SET node.PREF='Fevers' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0015967'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Treatment {id: 'C0700287'}) SET node.PREF='Report' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Treatment {id: 'C0700287'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Treatment {id: 'C3812897'}) SET node.PREF='General' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Treatment {id: 'C3812897'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0040822'}) SET node.PREF='Shakes' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0040822'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0040822'}) SET node.PREF='Shakes' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0040822'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0008031'}) SET node.PREF='Chest Pain' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0008031'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Temporal {id: 'C0205178'}) SET node.PREF='Acuteness' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Temporal {id: 'C0205178'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0030252'}) SET node.PREF='Palpitation' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0030252'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0231303'}) SET node.PREF='Distress' SET node.STY='Mental Process'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0231303'}) 
MERGE (i)-[r:IS_MENTALPROCESS]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0019079'}) SET node.PREF='Hemoptyses' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0019079'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Body {id: 'C0040408'}) SET node.PREF='Lingua' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Body {id: 'C0040408'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0013404'}) SET node.PREF='Dyspnea' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0013404'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0006840'}) SET node.PREF='Candidosis' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0006840'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0027497'}) SET node.PREF='Nausea' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0027497'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Body {id: 'C0027530'}) SET node.PREF='Collum' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Body {id: 'C0027530'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0042963'}) SET node.PREF='Emesis' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0042963'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0011991'}) SET node.PREF='Diarrhea' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0011991'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Body {id: 'C0040578'}) SET node.PREF='Trachea' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Body {id: 'C0040578'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0009806'}) SET node.PREF='Constipated' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0009806'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Body {id: 'C0024235'}) SET node.PREF='Lymphatics' SET node.STY='Body System'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Body {id: 'C0024235'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0018926'}) SET node.PREF='Hematemeses' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0018926'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Body {id: 'C0027530'}) SET node.PREF='Collum' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Body {id: 'C0027530'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0747307'}) SET node.PREF='Patient reported' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0747307'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Body {id: 'C0729594'}) SET node.PREF='Axillary Node' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Body {id: 'C0729594'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Body {id: 'C0021853'}) SET node.PREF='Intestine' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Body {id: 'C0021853'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Body {id: 'C0024109'}) SET node.PREF='Pulmones' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Body {id: 'C0024109'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C1457887'}) SET node.PREF='Symptom' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C1457887'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C1709157'}) SET node.PREF='Clear Margin' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C1709157'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0013428'}) SET node.PREF='Dysuria' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0013428'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Treatment {id: 'C0004339'}) SET node.PREF='Listening' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Treatment {id: 'C0004339'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Temporal {id: 'C0439603'}) SET node.PREF='Frequency' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Temporal {id: 'C0439603'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0344365'}) SET node.PREF='Incmplet bldder emptying' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0344365'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Body {id: 'C0018787'}) SET node.PREF='Hearts' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Body {id: 'C0018787'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C1299586'}) SET node.PREF='Difficult' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C1299586'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0871269'}) SET node.PREF='Rhythm' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0871269'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C1272751'}) SET node.PREF='Does' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C1272751'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C1550457'}) SET node.PREF='Normal' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C1550457'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Treatment {id: 'C0700287'}) SET node.PREF='Report' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Treatment {id: 'C0700287'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Temporal {id: 'C0521114'}) SET node.PREF='Infrequent' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Temporal {id: 'C0521114'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Body {id: 'C1179704'}) SET node.PREF='S1 innervation' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Body {id: 'C1179704'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Temporal {id: 'C0205267'}) SET node.PREF='Intermittent' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Temporal {id: 'C0205267'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0020580'}) SET node.PREF='Numbness' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0020580'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Body {id: 'C1179705'}) SET node.PREF='S2 innervation' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Body {id: 'C1179705'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C2242996'}) SET node.PREF='Tingling' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C2242996'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Body {id: 'C0018563'}) SET node.PREF='Hand, NOS' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Body {id: 'C0018563'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Body {id: 'C0000726'}) SET node.PREF='Abdomen' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Body {id: 'C0000726'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0262926'}) SET node.PREF='History' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0262926'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0028754'}) SET node.PREF='Obesity' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0028754'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Body {id: 'C0015385'}) SET node.PREF='Extremity' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Body {id: 'C0015385'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0149651'}) SET node.PREF='Clubbing' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0149651'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0010520'}) SET node.PREF='Cyanosed' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0010520'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0013604'}) SET node.PREF='Dropsy' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0013604'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0238883'}) SET node.PREF='CALF TENDERNESS' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0238883'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Body {id: 'C1140618'}) SET node.PREF='Forelimb' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Body {id: 'C1140618'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Body {id: 'C0230416'}) SET node.PREF='Left hindlimb' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Body {id: 'C0230416'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Body {id: 'C0230415'}) SET node.PREF='Right leg' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Body {id: 'C0230415'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C2004284'}) SET node.PREF='Mental status' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C2004284'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0239110'}) SET node.PREF='alerts' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0239110'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C1961028'}) SET node.PREF='Oriented' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C1961028'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C2987187'}) SET node.PREF='Pleasant' SET node.STY='Mental Process'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C2987187'}) 
MERGE (i)-[r:IS_MENTALPROCESS]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Treatment {id: 'C0031809'}) SET node.PREF='Physical' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Treatment {id: 'C0031809'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Treatment {id: 'C0031809'}) SET node.PREF='Physical' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Treatment {id: 'C0031809'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Temporal {id: 'C0439588'}) SET node.PREF='acute chronic' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Temporal {id: 'C0439588'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0740418'}) SET node.PREF='Chronic back pain' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0740418'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0004604'}) SET node.PREF='Backache' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0004604'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Treatment {id: 'C0184666'}) SET node.PREF='Admission' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Treatment {id: 'C0184666'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Treatment {id: 'C0018747'}) SET node.PREF='HEALTH SERV' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Treatment {id: 'C0018747'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Treatment {id: 'C0034991'}) SET node.PREF='Rehab' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Treatment {id: 'C0034991'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Treatment {id: 'C0009818'}) SET node.PREF='Consult' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Treatment {id: 'C0009818'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Treatment {id: 'C0949766'}) SET node.PREF='Physiotherapy' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Treatment {id: 'C0949766'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Treatment {id: 'C1318464'}) SET node.PREF='OCCUP THER' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Treatment {id: 'C1318464'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Treatment {id: 'C0441640'}) SET node.PREF='Tapering' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Treatment {id: 'C0441640'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Drug {id: 'C0740057'}) SET node.PREF='Decadron' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Drug {id: 'C0740057'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Temporal {id: 'C0439228'}) SET node.PREF='Day' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Temporal {id: 'C0439228'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Treatment {id: 'C0441640'}) SET node.PREF='Tapering' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Treatment {id: 'C0441640'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Drug {id: 'C0684189'}) SET node.PREF='percocet 5' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Drug {id: 'C0684189'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0030193'}) SET node.PREF='Painful' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0030193'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Temporal {id: 'C0231290'}) SET node.PREF='Following' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Temporal {id: 'C0231290'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Treatment {id: 'C0029189'}) SET node.PREF='Castration' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Treatment {id: 'C0029189'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Temporal {id: 'C0175668'}) SET node.PREF='Secondary' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Temporal {id: 'C0175668'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0153594'}) SET node.PREF='Testis Cancer' SET node.STY='Neoplastic Process'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0153594'}) 
MERGE (i)-[r:IS_NEOPLASTIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Temporal {id: 'C0040223'}) SET node.PREF='Time' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Temporal {id: 'C0040223'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Temporal {id: 'C1513491'}) SET node.PREF='Most Recent' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Temporal {id: 'C1513491'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Treatment {id: 'C0203668'}) SET node.PREF='Bone Scan' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Treatment {id: 'C0203668'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Org {id: 'C0019994'}) SET node.PREF='Hospital' SET node.STY='Health Care Related Organization'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Org {id: 'C0019994'}) 
MERGE (i)-[r:AT_LOCATION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0017168'}) SET node.PREF='Acid Reflux' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0017168'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0022104'}) SET node.PREF='Colon spasm' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0022104'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Clinical {id: 'C2707256'}) SET node.PREF='Gastrointestinal' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Clinical {id: 'C2707256'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Treatment {id: 'C0199176'}) SET node.PREF='Prevention' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Treatment {id: 'C0199176'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Drug {id: 'C0282139'}) SET node.PREF='Colace' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Drug {id: 'C0282139'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Drug {id: 'C0022957'}) SET node.PREF='Lactulose' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Drug {id: 'C0022957'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C1273517'}) SET node.PREF='Used by' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C1273517'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Drug {id: 'C1874451'}) SET node.PREF='Basis' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Drug {id: 'C1874451'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Drug {id: 'C0876139'}) SET node.PREF='Protonix' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Drug {id: 'C0876139'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Temporal {id: 'C0332173'}) SET node.PREF='Per Day' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Temporal {id: 'C0332173'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0149871'}) SET node.PREF='DVT NOS' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0149871'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Treatment {id: 'C0199242'}) SET node.PREF='Anticoagulant coverage' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Treatment {id: 'C0199242'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Treatment {id: 'C0199176'}) SET node.PREF='Prevention' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Treatment {id: 'C0199176'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Condition {id: 'C0008350'}) SET node.PREF='Gallstone' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Condition {id: 'C0008350'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Treatment {id: 'C0041618'}) SET node.PREF='Sonogram' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Treatment {id: 'C0041618'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Condition {id: 'C0700124'}) SET node.PREF='Dilate' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Condition {id: 'C0700124'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Body {id: 'C0009437'}) SET node.PREF='Choledochus' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Body {id: 'C0009437'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Treatment {id: 'C0203762'}) SET node.PREF='HIDA scan' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Treatment {id: 'C0203762'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Condition {id: 'C0008325'}) SET node.PREF='Cholecystitis' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Condition {id: 'C0008325'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Body {id: 'C0016976'}) SET node.PREF='Gallbladder' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Body {id: 'C0016976'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Condition {id: 'C1299582'}) SET node.PREF='Unable' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Condition {id: 'C1299582'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Body {id: 'C0021852'}) SET node.PREF='Small Bowel' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Body {id: 'C0021852'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Body {id: 'C0009437'}) SET node.PREF='Choledochus' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Body {id: 'C0009437'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Condition {id: 'C1706968'}) SET node.PREF='Blockage' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Condition {id: 'C1706968'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Org {id: 'C0029064'}) SET node.PREF='Operating Room' SET node.STY='Health Care Related Organization'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Org {id: 'C0029064'}) 
MERGE (i)-[r:AT_LOCATION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Temporal {id: 'C0240526'}) SET node.PREF='At night' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Temporal {id: 'C0240526'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Treatment {id: 'C0162522'}) SET node.PREF='Laparoscopic cholecystec' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Treatment {id: 'C0162522'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Treatment {id: 'C0162522'}) SET node.PREF='Laparoscopic cholecystec' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Treatment {id: 'C0162522'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Treatment {id: 'C0008307'}) SET node.PREF='CHOLANGIOGR' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Treatment {id: 'C0008307'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Condition {id: 'C1299581'}) SET node.PREF='Able' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Condition {id: 'C1299581'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Body {id: 'C0013303'}) SET node.PREF='Duodenal' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Body {id: 'C0013303'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:THING {id: 'C1880363'}) SET node.PREF='Distal Common Bile Duct' SET node.STY='Anatomical Structure'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:THING {id: 'C1880363'}) 
MERGE (i)-[r:RELATED]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Treatment {id: 'C0585179'}) SET node.PREF='Roux en Y Gastric Bypass' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Treatment {id: 'C0585179'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Treatment {id: 'C0883371'}) SET node.PREF='Stone removal' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Treatment {id: 'C0883371'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Treatment {id: 'C0015327'}) SET node.PREF='Choledochotomy and exploration' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Treatment {id: 'C0015327'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Treatment {id: 'C0185115'}) SET node.PREF='Extracted' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Treatment {id: 'C0185115'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Treatment {id: 'C0543467'}) SET node.PREF='Surgery' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Treatment {id: 'C0543467'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Treatment {id: 'C0199168'}) SET node.PREF='Medical' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Treatment {id: 'C0199168'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Treatment {id: 'C0543467'}) SET node.PREF='Surgery' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Treatment {id: 'C0543467'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Condition {id: 'C1717947'}) SET node.PREF='Incisional pain' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Condition {id: 'C1717947'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Temporal {id: 'C0231290'}) SET node.PREF='Following' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Temporal {id: 'C0231290'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Temporal {id: 'C0332170'}) SET node.PREF='Morning' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Temporal {id: 'C0332170'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Condition {id: 'C0423584'}) SET node.PREF='No nausea' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Condition {id: 'C0423584'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Treatment {id: 'C0013103'}) SET node.PREF='Drainage' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Treatment {id: 'C0013103'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Treatment {id: 'C0023508'}) SET node.PREF='Leukocytes' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Treatment {id: 'C0023508'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Treatment {id: 'C0201913'}) SET node.PREF='Bilirubin' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Treatment {id: 'C0201913'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Temporal {id: 'C0332170'}) SET node.PREF='Morning' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Temporal {id: 'C0332170'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Treatment {id: 'C0301571'}) SET node.PREF='Fluid diet' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Treatment {id: 'C0301571'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Condition {id: 'C1444662'}) SET node.PREF='Discontinue' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Condition {id: 'C1444662'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Condition {id: 'C0400997'}) SET node.PREF='Bile leak' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Condition {id: 'C0400997'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Treatment {id: 'C0012159'}) SET node.PREF='ActClassDiet' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Treatment {id: 'C0012159'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Temporal {id: 'C0032790'}) SET node.PREF='postop' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Temporal {id: 'C0032790'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Temporal {id: 'C0332173'}) SET node.PREF='Per Day' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Temporal {id: 'C0332173'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Temporal {id: 'C0231290'}) SET node.PREF='Following' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Temporal {id: 'C0231290'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Temporal {id: 'C0332170'}) SET node.PREF='Morning' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Temporal {id: 'C0332170'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Treatment {id: 'C0012159'}) SET node.PREF='ActClassDiet' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Treatment {id: 'C0012159'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Body {id: 'C0021853'}) SET node.PREF='Intestine' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Body {id: 'C0021853'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Condition {id: 'C0277797'}) SET node.PREF='Afebrile' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Condition {id: 'C0277797'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Treatment {id: 'C0002766'}) SET node.PREF='Analgesia' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Treatment {id: 'C0002766'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Condition {id: 'C0221776'}) SET node.PREF='Oral Pain' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Condition {id: 'C0221776'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Drug {id: 'C0013227'}) SET node.PREF='Medicine' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Drug {id: 'C0013227'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Treatment {id: 'C0013103'}) SET node.PREF='Drainage' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Treatment {id: 'C0013103'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Condition {id: 'C1444662'}) SET node.PREF='Discontinue' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Condition {id: 'C1444662'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Condition {id: 'C0043250'}) SET node.PREF='Wounds' SET node.STY='Injury or Poisoning'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Condition {id: 'C0043250'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Treatment {id: 'C0013103'}) SET node.PREF='Drainage' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Treatment {id: 'C0013103'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Body {id: 'C0010672'}) SET node.PREF='Cystic Duct' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Body {id: 'C0010672'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Temporal {id: 'C0231290'}) SET node.PREF='Following' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Temporal {id: 'C0231290'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Temporal {id: 'C0332170'}) SET node.PREF='Morning' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Temporal {id: 'C0332170'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Treatment {id: 'C0681827'}) SET node.PREF='Laboratory Study' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Treatment {id: 'C0681827'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Treatment {id: 'C0201913'}) SET node.PREF='Bilirubin' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Treatment {id: 'C0201913'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Condition {id: 'C1550457'}) SET node.PREF='Normal' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Condition {id: 'C1550457'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Treatment {id: 'C0023508'}) SET node.PREF='Leukocytes' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Treatment {id: 'C0023508'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Condition {id: 'C1550457'}) SET node.PREF='Normal' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Condition {id: 'C1550457'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Treatment {id: 'C0013103'}) SET node.PREF='Drainage' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Treatment {id: 'C0013103'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Condition {id: 'C1444662'}) SET node.PREF='Discontinue' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Condition {id: 'C1444662'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Treatment {id: 'C0030685'}) SET node.PREF='Release' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Treatment {id: 'C0030685'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Treatment {id: 'C1522577'}) SET node.PREF='Followup' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Treatment {id: 'C1522577'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Temporal {id: 'C1442459'}) SET node.PREF='3 days' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Temporal {id: 'C1442459'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Treatment {id: 'C0204864'}) SET node.PREF='Removal of staples' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Treatment {id: 'C0204864'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Drug {id: 'C0302583'}) SET node.PREF='Iron, NOS' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Drug {id: 'C0302583'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Drug {id: 'C0721432'}) SET node.PREF='Lortab Elixir' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Drug {id: 'C0721432'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Condition {id: 'C0030193'}) SET node.PREF='Painful' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Condition {id: 'C0030193'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Treatment {id: 'C3274430'}) SET node.PREF='PROCEDURE' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Treatment {id: 'C3274430'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Treatment {id: 'C0008310'}) SET node.PREF='ERCP, NOS' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Treatment {id: 'C0008310'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Condition {id: 'C0008325'}) SET node.PREF='Cholecystitis' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Condition {id: 'C0008325'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Condition {id: 'C0701818'}) SET node.PREF='Bile duct calculus' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Condition {id: 'C0701818'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Treatment {id: 'C0162522'}) SET node.PREF='Laparoscopic cholecystec' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Treatment {id: 'C0162522'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Treatment {id: 'C0031150'}) SET node.PREF='Celioscopy' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Treatment {id: 'C0031150'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Treatment {id: 'C0015327'}) SET node.PREF='Choledochotomy and exploration' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Treatment {id: 'C0015327'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Treatment {id: 'C0883371'}) SET node.PREF='Stone removal' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Treatment {id: 'C0883371'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Treatment {id: 'C0199168'}) SET node.PREF='Medical' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Treatment {id: 'C0199168'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Treatment {id: 'C0700287'}) SET node.PREF='Report' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Treatment {id: 'C0700287'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Treatment {id: 'C0184666'}) SET node.PREF='Admission' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Treatment {id: 'C0184666'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Condition {id: 'C0008325'}) SET node.PREF='Cholecystitis' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Condition {id: 'C0008325'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Condition {id: 'C0701818'}) SET node.PREF='Bile duct calculus' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Condition {id: 'C0701818'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Treatment {id: 'C0030685'}) SET node.PREF='Release' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Treatment {id: 'C0030685'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Condition {id: 'C0011900'}) SET node.PREF='Diagnosed' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Condition {id: 'C0011900'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Condition {id: 'C0008325'}) SET node.PREF='Cholecystitis' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Condition {id: 'C0008325'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Condition {id: 'C0701818'}) SET node.PREF='Bile duct calculus' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Condition {id: 'C0701818'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Clinical {id: 'C2707269'}) SET node.PREF='Additional diagnoses' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Clinical {id: 'C2707269'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Temporal {id: 'C0231290'}) SET node.PREF='Following' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Temporal {id: 'C0231290'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Treatment {id: 'C0585179'}) SET node.PREF='Roux en Y Gastric Bypass' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Treatment {id: 'C0585179'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Treatment {id: 'C0184661'}) SET node.PREF='Procedure' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Treatment {id: 'C0184661'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Treatment {id: 'C0031150'}) SET node.PREF='Celioscopy' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Treatment {id: 'C0031150'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Condition {id: 'C0019270'}) SET node.PREF='Hernia' SET node.STY='Anatomical Abnormality'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Condition {id: 'C0019270'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Temporal {id: 'C0439234'}) SET node.PREF='Year' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Temporal {id: 'C0439234'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Condition {id: 'C0262926'}) SET node.PREF='History' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Condition {id: 'C0262926'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Temporal {id: 'C0580836'}) SET node.PREF='Old' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Temporal {id: 'C0580836'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Condition {id: 'C0037315'}) SET node.PREF='Sleep Apnea' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Condition {id: 'C0037315'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Treatment {id: 'C0184666'}) SET node.PREF='Admission' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Treatment {id: 'C0184666'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Condition {id: 'C1262477'}) SET node.PREF='Weight Loss' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Condition {id: 'C1262477'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Condition {id: 'C0311468'}) SET node.PREF='Hyperbilirubinemia' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Condition {id: 'C0311468'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Condition {id: 'C0028756'}) SET node.PREF='Morbid Obesity' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Condition {id: 'C0028756'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Body {id: 'C0009437'}) SET node.PREF='Choledochus' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Body {id: 'C0009437'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Treatment {id: 'C0162522'}) SET node.PREF='Laparoscopic cholecystec' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Treatment {id: 'C0162522'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Treatment {id: 'C0031150'}) SET node.PREF='Celioscopy' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Treatment {id: 'C0031150'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Treatment {id: 'C0184666'}) SET node.PREF='Admission' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Treatment {id: 'C0184666'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Treatment {id: 'C0015327'}) SET node.PREF='Choledochotomy and exploration' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Treatment {id: 'C0015327'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Org {id: 'C0562508'}) SET node.PREF='Emergency Room' SET node.STY='Health Care Related Organization'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Org {id: 'C0562508'}) 
MERGE (i)-[r:AT_LOCATION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Treatment {id: 'C0883371'}) SET node.PREF='Stone removal' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Treatment {id: 'C0883371'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Condition {id: 'C0000737'}) SET node.PREF='Bellyache' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Condition {id: 'C0000737'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Condition {id: 'C0311468'}) SET node.PREF='Hyperbilirubinemia' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Condition {id: 'C0311468'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Clinical {id: 'C0488549'}) SET node.PREF='Hospital course' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Clinical {id: 'C0488549'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C0020473'}) SET node.PREF='Lipidemia' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C0020473'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Treatment {id: 'C0422202'}) SET node.PREF='Notify' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Treatment {id: 'C0422202'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C0040034'}) SET node.PREF='Thrombopenia' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C0040034'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C1457887'}) SET node.PREF='Symptom' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C1457887'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C0011900'}) SET node.PREF='Diagnosed' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C0011900'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Drug {id: 'C0678143'}) SET node.PREF='Azadose' SET node.STY='Antibiotic'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Drug {id: 'C0678143'}) 
MERGE (i)-[r:IS_ADMINISTERED]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Temporal {id: 'C1548175'}) SET node.PREF='On discharge' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Temporal {id: 'C1548175'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Treatment {id: 'C0024485'}) SET node.PREF='Imaging, NMR' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Treatment {id: 'C0024485'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C0038454'}) SET node.PREF='Stroke' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C0038454'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Treatment {id: 'C0024485'}) SET node.PREF='Imaging, NMR' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Treatment {id: 'C0024485'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Body {id: 'C0230346'}) SET node.PREF='Arm.right' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Body {id: 'C0230346'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Treatment {id: 'C0033325'}) SET node.PREF='Prognoses' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Treatment {id: 'C0033325'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C0751409'}) SET node.PREF='arm paresis' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C0751409'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Treatment {id: 'C0009244'}) SET node.PREF='Cognition Therapy' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Treatment {id: 'C0009244'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C3714552'}) SET node.PREF='Debility' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C3714552'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Temporal {id: 'C0205178'}) SET node.PREF='Acuteness' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Temporal {id: 'C0205178'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Treatment {id: 'C0201930'}) SET node.PREF='Carbon Dioxide' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Treatment {id: 'C0201930'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Temporal {id: 'C0205365'}) SET node.PREF='Subacute' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Temporal {id: 'C0205365'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Treatment {id: 'C0005845'}) SET node.PREF='Blood urea' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Treatment {id: 'C0005845'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C0021308'}) SET node.PREF='Infarct' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C0021308'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Treatment {id: 'C0525032'}) SET node.PREF='Internationalised ratio' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Treatment {id: 'C0525032'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C0751438'}) SET node.PREF='Posterior' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C0751438'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Treatment {id: 'C0030605'}) SET node.PREF='PTT assay' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Treatment {id: 'C0030605'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Body {id: 'C0030560'}) SET node.PREF='Parietal Lobe' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Body {id: 'C0030560'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C0577559'}) SET node.PREF='A mass' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C0577559'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Temporal {id: 'C0580836'}) SET node.PREF='Old' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Temporal {id: 'C0580836'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Body {id: 'C0018787'}) SET node.PREF='Hearts' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Body {id: 'C0018787'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C0021308'}) SET node.PREF='Infarct' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C0021308'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C0751437'}) SET node.PREF='Anterior' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C0751437'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Body {id: 'C2330887'}) SET node.PREF='Right external capsule' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Body {id: 'C2330887'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C0149514'}) SET node.PREF='Acute Bronchitis' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C0149514'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C3714497'}) SET node.PREF='Reactive Airway Disease' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C3714497'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C0040034'}) SET node.PREF='Thrombopenia' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C0040034'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Temporal {id: 'C0580836'}) SET node.PREF='Old' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Temporal {id: 'C0580836'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Body {id: 'C0018787'}) SET node.PREF='Hearts' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Body {id: 'C0018787'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C0021308'}) SET node.PREF='Infarct' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C0021308'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C0751437'}) SET node.PREF='Anterior' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C0751437'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Body {id: 'C2330887'}) SET node.PREF='Right external capsule' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Body {id: 'C2330887'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C0004153'}) SET node.PREF='Atheromatosis' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C0004153'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C0020473'}) SET node.PREF='Lipidemia' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C0020473'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Clinical {id: 'C0488549'}) SET node.PREF='Hospital course' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Clinical {id: 'C0488549'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Treatment {id: 'C0184666'}) SET node.PREF='Admission' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Treatment {id: 'C0184666'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Org {id: 'C0562508'}) SET node.PREF='Emergency Room' SET node.STY='Health Care Related Organization'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Org {id: 'C0562508'}) 
MERGE (i)-[r:AT_LOCATION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Drug {id: 'C0633084'}) SET node.PREF='Plavix' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Drug {id: 'C0633084'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Drug {id: 'C2608320'}) SET node.PREF='Baby Aspirin' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Drug {id: 'C2608320'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Body {id: 'C0226896'}) SET node.PREF='Orally' SET node.STY='Body Space or Junction'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Body {id: 'C0226896'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Drug {id: 'C0678143'}) SET node.PREF='Azadose' SET node.STY='Antibiotic'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Drug {id: 'C0678143'}) 
MERGE (i)-[r:IS_ADMINISTERED]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C0010200'}) SET node.PREF='Coughs' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C0010200'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Drug {id: 'C0876218'}) SET node.PREF='Xopenex' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Drug {id: 'C0876218'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Treatment {id: 'C0087111'}) SET node.PREF='Therapy' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Treatment {id: 'C0087111'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C0476273'}) SET node.PREF='Distressed breathing' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C0476273'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Body {id: 'C0741968'}) SET node.PREF='Carotid' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Body {id: 'C0741968'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Treatment {id: 'C0041618'}) SET node.PREF='Sonogram' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Treatment {id: 'C0041618'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C0028778'}) SET node.PREF='Occlusion' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C0028778'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Body {id: 'C0741978'}) SET node.PREF='carotid internal' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Body {id: 'C0741978'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Treatment {id: 'C0009818'}) SET node.PREF='Consult' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Treatment {id: 'C0009818'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Treatment {id: 'C0002978'}) SET node.PREF='Angiogram' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Treatment {id: 'C0002978'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C3872566'}) SET node.PREF='Obstructive lesion' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C3872566'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Treatment {id: 'C0041618'}) SET node.PREF='Sonogram' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Treatment {id: 'C0041618'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Treatment {id: 'C0412674'}) SET node.PREF='MRI head' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Treatment {id: 'C0412674'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Clinical {id: 'C2926606'}) SET node.PREF='Findings' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Clinical {id: 'C2926606'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Body {id: 'C0175252'}) SET node.PREF='Paratenial Nucleus' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Body {id: 'C0175252'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Treatment {id: 'C0030685'}) SET node.PREF='Release' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Treatment {id: 'C0030685'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Body {id: 'C0230346'}) SET node.PREF='Arm.right' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Body {id: 'C0230346'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C0010200'}) SET node.PREF='Coughs' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C0010200'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Body {id: 'C0226896'}) SET node.PREF='Orally' SET node.STY='Body Space or Junction'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Body {id: 'C0226896'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Drug {id: 'C0678143'}) SET node.PREF='Azadose' SET node.STY='Antibiotic'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Drug {id: 'C0678143'}) 
MERGE (i)-[r:IS_ADMINISTERED]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Treatment {id: 'C0087111'}) SET node.PREF='Therapy' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Treatment {id: 'C0087111'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Treatment {id: 'C0032181'}) SET node.PREF='Platelets' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Treatment {id: 'C0032181'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Treatment {id: 'C0030685'}) SET node.PREF='Release' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Treatment {id: 'C0030685'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Treatment {id: 'C0032181'}) SET node.PREF='Platelets' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Treatment {id: 'C0032181'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C1550457'}) SET node.PREF='Normal' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C1550457'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Treatment {id: 'C0039985'}) SET node.PREF='chest X ray' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Treatment {id: 'C0039985'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C1513302'}) SET node.PREF='Mild' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C1513302'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C3554250'}) SET node.PREF='Elevated right hemidiaphragm' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C3554250'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Treatment {id: 'C1254572'}) SET node.PREF='chemistry panel' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Treatment {id: 'C1254572'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Treatment {id: 'C0337443'}) SET node.PREF='Sodium' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Treatment {id: 'C0337443'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Treatment {id: 'C0202194'}) SET node.PREF='Potassium' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Treatment {id: 'C0202194'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Treatment {id: 'C0201952'}) SET node.PREF='Chloride' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Treatment {id: 'C0201952'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Drug {id: 'C0017725'}) SET node.PREF='Glucose' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Drug {id: 'C0017725'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Treatment {id: 'C0201975'}) SET node.PREF='Creatinine' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Treatment {id: 'C0201975'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Drug {id: 'C0006675'}) SET node.PREF='Calcium' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Drug {id: 'C0006675'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Body {id: 'C0175252'}) SET node.PREF='Paratenial Nucleus' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Body {id: 'C0175252'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Temporal {id: 'C0457453'}) SET node.PREF='On admission' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Temporal {id: 'C0457453'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Treatment {id: 'C1318464'}) SET node.PREF='OCCUP THER' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Treatment {id: 'C1318464'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Temporal {id: 'C0040223'}) SET node.PREF='Time' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Temporal {id: 'C0040223'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C0038454'}) SET node.PREF='Stroke' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C0038454'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Treatment {id: 'C0030685'}) SET node.PREF='Release' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Treatment {id: 'C0030685'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C0001365'}) SET node.PREF='Cva' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C0001365'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Body {id: 'C0230346'}) SET node.PREF='Arm.right' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Body {id: 'C0230346'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C0751409'}) SET node.PREF='arm paresis' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C0751409'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C0010200'}) SET node.PREF='Coughs' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C0010200'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C3714552'}) SET node.PREF='Debility' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C3714552'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Body {id: 'C0230346'}) SET node.PREF='Arm.right' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Body {id: 'C0230346'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Temporal {id: 'C0205178'}) SET node.PREF='Acuteness' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Temporal {id: 'C0205178'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C0751409'}) SET node.PREF='arm paresis' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C0751409'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Temporal {id: 'C0205365'}) SET node.PREF='Subacute' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Temporal {id: 'C0205365'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C3714552'}) SET node.PREF='Debility' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C3714552'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C0021308'}) SET node.PREF='Infarct' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C0021308'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C0751438'}) SET node.PREF='Posterior' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C0751438'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Body {id: 'C0024109'}) SET node.PREF='Pulmones' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Body {id: 'C0024109'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Body {id: 'C0030560'}) SET node.PREF='Parietal Lobe' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Body {id: 'C0030560'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Treatment {id: 'C0031809'}) SET node.PREF='Physical' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Treatment {id: 'C0031809'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C0577559'}) SET node.PREF='A mass' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C0577559'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Temporal {id: 'C0521114'}) SET node.PREF='Infrequent' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Temporal {id: 'C0521114'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Temporal {id: 'C0580836'}) SET node.PREF='Old' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Temporal {id: 'C0580836'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C0035508'}) SET node.PREF='Rhonchi' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C0035508'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Body {id: 'C0018787'}) SET node.PREF='Hearts' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Body {id: 'C0018787'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Treatment {id: 'C0418991'}) SET node.PREF='Metered dose inhaler' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Treatment {id: 'C0418991'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C0021308'}) SET node.PREF='Infarct' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C0021308'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Drug {id: 'C0001927'}) SET node.PREF='Albuterol' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Drug {id: 'C0001927'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C0751437'}) SET node.PREF='Anterior' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C0751437'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Treatment {id: 'C0030685'}) SET node.PREF='Release' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Treatment {id: 'C0030685'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Body {id: 'C2330887'}) SET node.PREF='Right external capsule' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Body {id: 'C2330887'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Treatment {id: 'C0013516'}) SET node.PREF='Cardiac echo' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Treatment {id: 'C0013516'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C0149514'}) SET node.PREF='Acute Bronchitis' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C0149514'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C1513302'}) SET node.PREF='Mild' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C1513302'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C3714497'}) SET node.PREF='Reactive Airway Disease' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C3714497'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C0149721'}) SET node.PREF='LVH' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C0149721'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Treatment {id: 'C0199168'}) SET node.PREF='Medical' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Treatment {id: 'C0199168'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Treatment {id: 'C0700287'}) SET node.PREF='Report' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Treatment {id: 'C0700287'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C1550457'}) SET node.PREF='Normal' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C1550457'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Body {id: 'C0018827'}) SET node.PREF='Ventricle' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Body {id: 'C0018827'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C0011900'}) SET node.PREF='Diagnosed' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C0011900'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Temporal {id: 'C0457453'}) SET node.PREF='On admission' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Temporal {id: 'C0457453'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C0232310'}) SET node.PREF='P mitrale' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C0232310'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C0038454'}) SET node.PREF='Stroke' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C0038454'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C0520863'}) SET node.PREF='Diastolic Dysfunction' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C0520863'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C0001365'}) SET node.PREF='Cva' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C0001365'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C1513302'}) SET node.PREF='Mild' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C1513302'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C0026266'}) SET node.PREF='Mitral Incompetence' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C0026266'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Body {id: 'C0230346'}) SET node.PREF='Arm.right' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Body {id: 'C0230346'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C0751409'}) SET node.PREF='arm paresis' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C0751409'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C0589120'}) SET node.PREF='Follow up' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C0589120'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C3714552'}) SET node.PREF='Debility' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C3714552'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Temporal {id: 'C1442452'}) SET node.PREF='1 week' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Temporal {id: 'C1442452'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C0006277'}) SET node.PREF='Bronchitis' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C0006277'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Temporal {id: 'C0439659'}) SET node.PREF='Origin' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Temporal {id: 'C0439659'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C0004153'}) SET node.PREF='Atheromatosis' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C0004153'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Body {id: 'C0175252'}) SET node.PREF='Paratenial Nucleus' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Body {id: 'C0175252'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Condition {id: 'C0038018'}) SET node.PREF='Spondylolyses' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Condition {id: 'C0038018'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Condition {id: 'C0410648'}) SET node.PREF='Spinal instability' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Condition {id: 'C0410648'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Condition {id: 'C0700594'}) SET node.PREF='Radiculopathy' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Condition {id: 'C0700594'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Condition {id: 'C0027627'}) SET node.PREF='Metastases' SET node.STY='Neoplastic Process'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Condition {id: 'C0027627'}) 
MERGE (i)-[r:IS_NEOPLASTIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Condition {id: 'C1298685'}) SET node.PREF='Chronic pain syndrome' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Condition {id: 'C1298685'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Body {id: 'C1179702'}) SET node.PREF='L5 Segmental Innervation' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Body {id: 'C1179702'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Body {id: 'C0017558'}) SET node.PREF='Gill' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Body {id: 'C0017558'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Treatment {id: 'C0184661'}) SET node.PREF='Procedure' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Treatment {id: 'C0184661'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Treatment {id: 'C0003881'}) SET node.PREF='Arthrodeses' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Treatment {id: 'C0003881'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Treatment {id: 'C0005976'}) SET node.PREF='Bone Graft' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Treatment {id: 'C0005976'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Drug {id: 'C1704438'}) SET node.PREF='Recombinant bone morphogenic protein' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Drug {id: 'C1704438'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Body {id: 'C0456605'}) SET node.PREF='Pedicle' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Body {id: 'C0456605'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Treatment {id: 'C0185023'}) SET node.PREF='Fixation' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Treatment {id: 'C0185023'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Temporal {id: 'C1879313'}) SET node.PREF='Brief' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Temporal {id: 'C1879313'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Temporal {id: 'C0032790'}) SET node.PREF='postop' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Temporal {id: 'C0032790'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Condition {id: 'C0262926'}) SET node.PREF='History' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Condition {id: 'C0262926'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Treatment {id: 'C1561560'}) SET node.PREF='ambulatory' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Treatment {id: 'C1561560'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Body {id: 'C1521806'}) SET node.PREF='Fluids' SET node.STY='Tissue'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Body {id: 'C1521806'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Clinical {id: 'C0488549'}) SET node.PREF='Hospital course' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Clinical {id: 'C0488549'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Treatment {id: 'C0012159'}) SET node.PREF='ActClassDiet' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Treatment {id: 'C0012159'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Condition {id: 'C0277797'}) SET node.PREF='Afebrile' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Condition {id: 'C0277797'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Condition {id: 'C0262926'}) SET node.PREF='History' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Condition {id: 'C0262926'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Condition {id: 'C0043250'}) SET node.PREF='Wounds' SET node.STY='Injury or Poisoning'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Condition {id: 'C0043250'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Body {id: 'C0006497'}) SET node.PREF='Clunes' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Body {id: 'C0006497'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Condition {id: 'C0023222'}) SET node.PREF='Leg Pain' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Condition {id: 'C0023222'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Treatment {id: 'C0030685'}) SET node.PREF='Release' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Treatment {id: 'C0030685'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Treatment {id: 'C0220825'}) SET node.PREF='Evaluate' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Treatment {id: 'C0220825'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Condition {id: 'C0806915'}) SET node.PREF='Medication.discharge' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Condition {id: 'C0806915'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Body {id: 'C1179702'}) SET node.PREF='L5 Segmental Innervation' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Body {id: 'C1179702'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Condition {id: 'C0806915'}) SET node.PREF='Medication.discharge' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Condition {id: 'C0806915'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Temporal {id: 'C0445204'}) SET node.PREF='Preoperative' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Temporal {id: 'C0445204'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Body {id: 'C1179704'}) SET node.PREF='S1 innervation' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Body {id: 'C1179704'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Condition {id: 'C0038018'}) SET node.PREF='Spondylolyses' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Condition {id: 'C0038018'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Condition {id: 'C0030193'}) SET node.PREF='Painful' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Condition {id: 'C0030193'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Condition {id: 'C1444783'}) SET node.PREF='Instability' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Condition {id: 'C1444783'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Drug {id: 'C0013227'}) SET node.PREF='Medicine' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Drug {id: 'C0013227'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Treatment {id: 'C0184666'}) SET node.PREF='Admission' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Treatment {id: 'C0184666'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Treatment {id: 'C0543467'}) SET node.PREF='Surgery' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Treatment {id: 'C0543467'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Clinical {id: 'C1114750'}) SET node.PREF='Other medications' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Clinical {id: 'C1114750'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Treatment {id: 'C1522577'}) SET node.PREF='Followup' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Treatment {id: 'C1522577'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Temporal {id: 'C0040223'}) SET node.PREF='Time' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Temporal {id: 'C0040223'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Condition {id: 'C0589120'}) SET node.PREF='Follow up' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Condition {id: 'C0589120'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Temporal {id: 'C0439230'}) SET node.PREF='Week' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Temporal {id: 'C0439230'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Temporal {id: 'C0040223'}) SET node.PREF='Time' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Temporal {id: 'C0040223'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Treatment {id: 'C0012622'}) SET node.PREF='Discharge Planning' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Treatment {id: 'C0012622'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Treatment {id: 'C0012622'}) SET node.PREF='Discharge Planning' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Treatment {id: 'C0012622'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Condition {id: 'C0589120'}) SET node.PREF='Follow up' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Condition {id: 'C0589120'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Condition {id: 'C0011900'}) SET node.PREF='Diagnosed' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Condition {id: 'C0011900'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Treatment {id: 'C3274430'}) SET node.PREF='PROCEDURE' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Treatment {id: 'C3274430'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Body {id: 'C1179702'}) SET node.PREF='L5 Segmental Innervation' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Body {id: 'C1179702'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Condition {id: 'C0038018'}) SET node.PREF='Spondylolyses' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Condition {id: 'C0038018'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Condition {id: 'C0410648'}) SET node.PREF='Spinal instability' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Condition {id: 'C0410648'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Condition {id: 'C0700594'}) SET node.PREF='Radiculopathy' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Condition {id: 'C0700594'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Condition {id: 'C1298685'}) SET node.PREF='Chronic pain syndrome' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Condition {id: 'C1298685'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Treatment {id: 'C0199168'}) SET node.PREF='Medical' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Treatment {id: 'C0199168'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Treatment {id: 'C0700287'}) SET node.PREF='Report' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Treatment {id: 'C0700287'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Condition {id: 'C1628992'}) SET node.PREF='Admission diagnosis' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Condition {id: 'C1628992'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Body {id: 'C1179702'}) SET node.PREF='L5 Segmental Innervation' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Body {id: 'C1179702'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Condition {id: 'C0149721'}) SET node.PREF='LVH' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Condition {id: 'C0149721'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Body {id: 'C0006104'}) SET node.PREF='Brains' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Body {id: 'C0006104'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Condition {id: 'C0149793'}) SET node.PREF='Amaurosis Fugax' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Condition {id: 'C0149793'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Treatment {id: 'C1522577'}) SET node.PREF='Followup' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Treatment {id: 'C1522577'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Treatment {id: 'C0024485'}) SET node.PREF='Imaging, NMR' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Treatment {id: 'C0024485'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Treatment {id: 'C1522577'}) SET node.PREF='Followup' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Treatment {id: 'C1522577'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Body {id: 'C0023216'}) SET node.PREF='Hindlimb' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Body {id: 'C0023216'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Treatment {id: 'C0018795'}) SET node.PREF='CATH HEART' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Treatment {id: 'C0018795'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Treatment {id: 'C0242845'}) SET node.PREF='Duplex ultrasound' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Treatment {id: 'C0242845'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Condition {id: 'C0010054'}) SET node.PREF='Cardiac sclerosis' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Condition {id: 'C0010054'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Treatment {id: 'C0018795'}) SET node.PREF='CATH HEART' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Treatment {id: 'C0018795'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Condition {id: 'C0221198'}) SET node.PREF='Lesion' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Condition {id: 'C0221198'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Clinical {id: 'C0488549'}) SET node.PREF='Hospital course' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Clinical {id: 'C0488549'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Body {id: 'C0228207'}) SET node.PREF='Right parietal lobe' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Body {id: 'C0228207'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Temporal {id: 'C1879313'}) SET node.PREF='Brief' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Temporal {id: 'C1879313'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Condition {id: 'C0008031'}) SET node.PREF='Chest Pain' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Condition {id: 'C0008031'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Condition {id: 'C0262926'}) SET node.PREF='History' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Condition {id: 'C0262926'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Temporal {id: 'C0439234'}) SET node.PREF='Year' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Temporal {id: 'C0439234'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Condition {id: 'C0011849'}) SET node.PREF='Diabetes' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Condition {id: 'C0011849'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Temporal {id: 'C0580836'}) SET node.PREF='Old' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Temporal {id: 'C0580836'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Condition {id: 'C0455527'}) SET node.PREF='History of hypertension' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Condition {id: 'C0455527'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Condition {id: 'C0262926'}) SET node.PREF='History' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Condition {id: 'C0262926'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Treatment {id: 'C0220825'}) SET node.PREF='Evaluate' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Treatment {id: 'C0220825'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Condition {id: 'C0011849'}) SET node.PREF='Diabetes' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Condition {id: 'C0011849'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Temporal {id: 'C0175668'}) SET node.PREF='Secondary' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Temporal {id: 'C0175668'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Temporal {id: 'C1292428'}) SET node.PREF='6 hour' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Temporal {id: 'C1292428'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Condition {id: 'C0455493'}) SET node.PREF='H/O: obesity' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Condition {id: 'C0455493'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Condition {id: 'C0438716'}) SET node.PREF='Chest pressure' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Condition {id: 'C0438716'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Condition {id: 'C0040671'}) SET node.PREF='Transfer' SET node.STY='Mental Process'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Condition {id: 'C0040671'}) 
MERGE (i)-[r:IS_MENTALPROCESS]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Temporal {id: 'C0332283'}) SET node.PREF='Followed by' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Temporal {id: 'C0332283'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Condition {id: 'C0221198'}) SET node.PREF='Lesion' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Condition {id: 'C0221198'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Condition {id: 'C1457868'}) SET node.PREF='Worsens' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Condition {id: 'C1457868'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Temporal {id: 'C0439230'}) SET node.PREF='Week' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Temporal {id: 'C0439230'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Body {id: 'C0228207'}) SET node.PREF='Right parietal lobe' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Body {id: 'C0228207'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Body {id: 'C0018787'}) SET node.PREF='Hearts' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Body {id: 'C0018787'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Condition {id: 'C0040671'}) SET node.PREF='Transfer' SET node.STY='Mental Process'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Condition {id: 'C0040671'}) 
MERGE (i)-[r:IS_MENTALPROCESS]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Treatment {id: 'C0199168'}) SET node.PREF='Medical' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Treatment {id: 'C0199168'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Treatment {id: 'C0018795'}) SET node.PREF='CATH HEART' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Treatment {id: 'C0018795'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Condition {id: 'C2828386'}) SET node.PREF='Passed' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Condition {id: 'C2828386'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Treatment {id: 'C0700287'}) SET node.PREF='Report' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Treatment {id: 'C0700287'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Clinical {id: 'C0488614'}) SET node.PREF='Vital signs' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Clinical {id: 'C0488614'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Treatment {id: 'C0030685'}) SET node.PREF='Release' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Treatment {id: 'C0030685'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Temporal {id: 'C0457453'}) SET node.PREF='On admission' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Temporal {id: 'C0457453'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Condition {id: 'C4047608'}) SET node.PREF='Reason for transfer' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Condition {id: 'C4047608'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Treatment {id: 'C0030685'}) SET node.PREF='Release' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Treatment {id: 'C0030685'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Condition {id: 'C0027051'}) SET node.PREF='Heart Attack' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Condition {id: 'C0027051'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Condition {id: 'C0012634'}) SET node.PREF='Disease' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Condition {id: 'C0012634'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Treatment {id: 'C0523952'}) SET node.PREF='Troponin' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Treatment {id: 'C0523952'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Treatment {id: 'C0013516'}) SET node.PREF='Cardiac echo' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Treatment {id: 'C0013516'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Treatment {id: 'C0018795'}) SET node.PREF='CATH HEART' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Treatment {id: 'C0018795'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Org {id: 'C3887620'}) SET node.PREF='Cardiology' SET node.STY='Health Care Related Organization'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Org {id: 'C3887620'}) 
MERGE (i)-[r:AT_LOCATION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Condition {id: 'C0806915'}) SET node.PREF='Medication.discharge' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Condition {id: 'C0806915'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Drug {id: 'C0992015'}) SET node.PREF='Aspirin 325 MG' SET node.STY='Clinical Drug'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Drug {id: 'C0992015'}) 
MERGE (i)-[r:IS_ADMINISTERED]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Condition {id: 'C0011900'}) SET node.PREF='Diagnosed' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Condition {id: 'C0011900'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Treatment {id: 'C0015260'}) SET node.PREF='stress test' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Treatment {id: 'C0015260'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Condition {id: 'C0010054'}) SET node.PREF='Cardiac sclerosis' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Condition {id: 'C0010054'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Temporal {id: 'C1444637'}) SET node.PREF='In the past' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Temporal {id: 'C1444637'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Temporal {id: 'C0332173'}) SET node.PREF='Per Day' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Temporal {id: 'C0332173'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Drug {id: 'C0728963'}) SET node.PREF='Lovenox' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Drug {id: 'C0728963'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Condition {id: 'C0008031'}) SET node.PREF='Chest Pain' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Condition {id: 'C0008031'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Temporal {id: 'C0332173'}) SET node.PREF='Per Day' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Temporal {id: 'C0332173'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Condition {id: 'C0262926'}) SET node.PREF='History' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Condition {id: 'C0262926'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Drug {id: 'C0021641'}) SET node.PREF='Insulin' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Drug {id: 'C0021641'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Condition {id: 'C0011849'}) SET node.PREF='Diabetes' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Condition {id: 'C0011849'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Treatment {id: 'C2937251'}) SET node.PREF='scale sliding' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Treatment {id: 'C2937251'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Condition {id: 'C0455527'}) SET node.PREF='History of hypertension' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Condition {id: 'C0455527'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Drug {id: 'C0307068'}) SET node.PREF='Novolin 70/30' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Drug {id: 'C0307068'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Condition {id: 'C0455493'}) SET node.PREF='H/O: obesity' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Condition {id: 'C0455493'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Condition {id: 'C0221198'}) SET node.PREF='Lesion' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Condition {id: 'C0221198'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Drug {id: 'C0987665'}) SET node.PREF='Metformin 500 MG' SET node.STY='Clinical Drug'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Drug {id: 'C0987665'}) 
MERGE (i)-[r:IS_ADMINISTERED]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Body {id: 'C0228207'}) SET node.PREF='Right parietal lobe' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Body {id: 'C0228207'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Treatment {id: 'C0018795'}) SET node.PREF='CATH HEART' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Treatment {id: 'C0018795'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Temporal {id: 'C0332173'}) SET node.PREF='Per Day' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Temporal {id: 'C0332173'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Condition {id: 'C0040671'}) SET node.PREF='Transfer' SET node.STY='Mental Process'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Condition {id: 'C0040671'}) 
MERGE (i)-[r:IS_MENTALPROCESS]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Treatment {id: 'C0009818'}) SET node.PREF='Consult' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Treatment {id: 'C0009818'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Treatment {id: 'C0184661'}) SET node.PREF='Procedure' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Treatment {id: 'C0184661'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Org {id: 'C3887620'}) SET node.PREF='Cardiology' SET node.STY='Health Care Related Organization'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Org {id: 'C3887620'}) 
MERGE (i)-[r:AT_LOCATION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Drug {id: 'C0876139'}) SET node.PREF='Protonix' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Drug {id: 'C0876139'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Treatment {id: 'C0013516'}) SET node.PREF='Cardiac echo' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Treatment {id: 'C0013516'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Treatment {id: 'C0024485'}) SET node.PREF='Imaging, NMR' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Treatment {id: 'C0024485'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Temporal {id: 'C0332173'}) SET node.PREF='Per Day' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Temporal {id: 'C0332173'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Temporal {id: 'C0205265'}) SET node.PREF='Initial' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Temporal {id: 'C0205265'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Treatment {id: 'C0030685'}) SET node.PREF='Release' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Treatment {id: 'C0030685'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Condition {id: 'C0870814'}) SET node.PREF='Like' SET node.STY='Mental Process'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Condition {id: 'C0870814'}) 
MERGE (i)-[r:IS_MENTALPROCESS]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Drug {id: 'C0699992'}) SET node.PREF='Lasix' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Drug {id: 'C0699992'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Temporal {id: 'C0332173'}) SET node.PREF='Per Day' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Temporal {id: 'C0332173'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Drug {id: 'C0989059'}) SET node.PREF='Potassium Chloride 10 MEQ' SET node.STY='Clinical Drug'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Drug {id: 'C0989059'}) 
MERGE (i)-[r:IS_ADMINISTERED]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Temporal {id: 'C0332173'}) SET node.PREF='Per Day' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Temporal {id: 'C0332173'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Drug {id: 'C0983888'}) SET node.PREF='Atenolol 25 MG' SET node.STY='Clinical Drug'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Drug {id: 'C0983888'}) 
MERGE (i)-[r:IS_ADMINISTERED]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Temporal {id: 'C0332173'}) SET node.PREF='Per Day' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Temporal {id: 'C0332173'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Drug {id: 'C0004057'}) SET node.PREF='Aspirin' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Drug {id: 'C0004057'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Temporal {id: 'C0332173'}) SET node.PREF='Per Day' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Temporal {id: 'C0332173'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Drug {id: 'C0591395'}) SET node.PREF='Cystrin' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Drug {id: 'C0591395'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Drug {id: 'C0282139'}) SET node.PREF='Colace' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Drug {id: 'C0282139'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Treatment {id: 'C1522577'}) SET node.PREF='Followup' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Treatment {id: 'C1522577'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Temporal {id: 'C0332283'}) SET node.PREF='Followed by' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Temporal {id: 'C0332283'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Temporal {id: 'C1442452'}) SET node.PREF='1 week' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Temporal {id: 'C1442452'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Treatment {id: 'C0422202'}) SET node.PREF='Notify' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Treatment {id: 'C0422202'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Condition {id: 'C0011900'}) SET node.PREF='Diagnosed' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Condition {id: 'C0011900'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Condition {id: 'C0035021'}) SET node.PREF='Recurrent fever' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Condition {id: 'C0035021'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Condition {id: 'C0085593'}) SET node.PREF='Chills' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Condition {id: 'C0085593'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Treatment {id: 'C0201930'}) SET node.PREF='Carbon Dioxide' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Treatment {id: 'C0201930'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Treatment {id: 'C0005845'}) SET node.PREF='Blood urea' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Treatment {id: 'C0005845'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Treatment {id: 'C0033325'}) SET node.PREF='Prognoses' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Treatment {id: 'C0033325'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Treatment {id: 'C0949766'}) SET node.PREF='Physiotherapy' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Treatment {id: 'C0949766'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Treatment {id: 'C0525032'}) SET node.PREF='Internationalised ratio' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Treatment {id: 'C0525032'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Treatment {id: 'C0030605'}) SET node.PREF='PTT assay' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Treatment {id: 'C0030605'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Treatment {id: 'C0285131'}) SET node.PREF='CDDP/MTX/VBL' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Treatment {id: 'C0285131'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Condition {id: 'C0018802'}) SET node.PREF='CHF NOS' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Condition {id: 'C0018802'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Condition {id: 'C0032227'}) SET node.PREF='Pleural Effusion' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Condition {id: 'C0032227'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Condition {id: 'C0002873'}) SET node.PREF='Secondary anemia' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Condition {id: 'C0002873'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Treatment {id: 'C0199168'}) SET node.PREF='Medical' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Treatment {id: 'C0199168'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Treatment {id: 'C0700287'}) SET node.PREF='Report' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Treatment {id: 'C0700287'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Treatment {id: 'C0184666'}) SET node.PREF='Admission' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Treatment {id: 'C0184666'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Condition {id: 'C0018802'}) SET node.PREF='CHF NOS' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Condition {id: 'C0018802'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Condition {id: 'C0032227'}) SET node.PREF='Pleural Effusion' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Condition {id: 'C0032227'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Condition {id: 'C0011900'}) SET node.PREF='Diagnosed' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Condition {id: 'C0011900'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Temporal {id: 'C3871203'}) SET node.PREF='At discharge' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Temporal {id: 'C3871203'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Condition {id: 'C0018802'}) SET node.PREF='CHF NOS' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Condition {id: 'C0018802'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Condition {id: 'C0032227'}) SET node.PREF='Pleural Effusion' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Condition {id: 'C0032227'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Condition {id: 'C0020538'}) SET node.PREF='Hyperpiesia' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Condition {id: 'C0020538'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Condition {id: 'C0376358'}) SET node.PREF='Prostate Cancer' SET node.STY='Neoplastic Process'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Condition {id: 'C0376358'}) 
MERGE (i)-[r:IS_NEOPLASTIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Condition {id: 'C0023518'}) SET node.PREF='Leucocytosis' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Condition {id: 'C0023518'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Condition {id: 'C0002873'}) SET node.PREF='Secondary anemia' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Condition {id: 'C0002873'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Clinical {id: 'C0488549'}) SET node.PREF='Hospital course' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Clinical {id: 'C0488549'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Treatment {id: 'C0184666'}) SET node.PREF='Admission' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Treatment {id: 'C0184666'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Org {id: 'C0562508'}) SET node.PREF='Emergency Room' SET node.STY='Health Care Related Organization'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Org {id: 'C0562508'}) 
MERGE (i)-[r:AT_LOCATION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Treatment {id: 'C0021440'}) SET node.PREF='IV Infusion' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Treatment {id: 'C0021440'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Drug {id: 'C0699992'}) SET node.PREF='Lasix' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Drug {id: 'C0699992'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Drug {id: 'C0701176'}) SET node.PREF='Prinivil' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Drug {id: 'C0701176'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Drug {id: 'C0004057'}) SET node.PREF='Aspirin' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Drug {id: 'C0004057'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Drug {id: 'C0069805'}) SET node.PREF='Oxybutynin' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Drug {id: 'C0069805'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Drug {id: 'C1692318'}) SET node.PREF='Docusate' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Drug {id: 'C1692318'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Drug {id: 'C0721242'}) SET node.PREF='klor con' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Drug {id: 'C0721242'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Body {id: 'C1527391'}) SET node.PREF='Chest region' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Body {id: 'C1527391'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Treatment {id: 'C0043299'}) SET node.PREF='radiology' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Treatment {id: 'C0043299'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Temporal {id: 'C0332283'}) SET node.PREF='Followed by' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Temporal {id: 'C0332283'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Body {id: 'C1527391'}) SET node.PREF='Chest region' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Body {id: 'C1527391'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Treatment {id: 'C0043299'}) SET node.PREF='radiology' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Treatment {id: 'C0043299'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Treatment {id: 'C0009818'}) SET node.PREF='Consult' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Treatment {id: 'C0009818'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:THING {id: 'C0189477'}) SET node.PREF='Pleural Tap' SET node.STY='Diagnostic Procedure,Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:THING {id: 'C0189477'}) 
MERGE (i)-[r:RELATED]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Treatment {id: 'C0013516'}) SET node.PREF='Cardiac echo' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Treatment {id: 'C0013516'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Treatment {id: 'C0489482'}) SET node.PREF='ejection fraction' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Treatment {id: 'C0489482'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Condition {id: 'C3842585'}) SET node.PREF='60%' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Condition {id: 'C3842585'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Condition {id: 'C0520863'}) SET node.PREF='Diastolic Dysfunction' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Condition {id: 'C0520863'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Condition {id: 'C1261287'}) SET node.PREF='Stenoses' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Condition {id: 'C1261287'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Drug {id: 'C0001443'}) SET node.PREF='Adenosine' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Drug {id: 'C0001443'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Drug {id: 'C1337333'}) SET node.PREF='Sestamibi' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Drug {id: 'C1337333'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Condition {id: 'C0022116'}) SET node.PREF='Ischemia' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Condition {id: 'C0022116'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Clinical {id: 'C2926589'}) SET node.PREF='Cardiac enzymes' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Clinical {id: 'C2926589'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Condition {id: 'C1513916'}) SET node.PREF='Negative' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Condition {id: 'C1513916'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Drug {id: 'C0001645'}) SET node.PREF='Beta Blocker' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Drug {id: 'C0001645'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Drug {id: 'C0003015'}) SET node.PREF='ACE INHIB' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Drug {id: 'C0003015'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Drug {id: 'C0065374'}) SET node.PREF='Lisinopril' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Drug {id: 'C0065374'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Condition {id: 'C1444662'}) SET node.PREF='Discontinue' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Condition {id: 'C1444662'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Condition {id: 'C3841449'}) SET node.PREF='Much Better' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Condition {id: 'C3841449'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:THING {id: 'C0189477'}) SET node.PREF='Pleural Tap' SET node.STY='Diagnostic Procedure,Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:THING {id: 'C0189477'}) 
MERGE (i)-[r:RELATED]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Condition {id: 'C3840725'}) SET node.PREF='Do not' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Condition {id: 'C3840725'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Temporal {id: 'C1546438'}) SET node.PREF='Routine' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Temporal {id: 'C1546438'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Treatment {id: 'C0947630'}) SET node.PREF='Study' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Treatment {id: 'C0947630'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Treatment {id: 'C0022885'}) SET node.PREF='Lab Test' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Treatment {id: 'C0022885'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Temporal {id: 'C3871203'}) SET node.PREF='At discharge' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Temporal {id: 'C3871203'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Treatment {id: 'C0337443'}) SET node.PREF='Sodium' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Treatment {id: 'C0337443'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Treatment {id: 'C0202194'}) SET node.PREF='Potassium' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Treatment {id: 'C0202194'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Treatment {id: 'C0201952'}) SET node.PREF='Chloride' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Treatment {id: 'C0201952'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Drug {id: 'C0017725'}) SET node.PREF='Glucose' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Drug {id: 'C0017725'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Treatment {id: 'C0201975'}) SET node.PREF='Creatinine' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Treatment {id: 'C0201975'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Drug {id: 'C0017725'}) SET node.PREF='Glucose' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Drug {id: 'C0017725'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Drug {id: 'C0701466'}) SET node.PREF='Solumedrol' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Drug {id: 'C0701466'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Treatment {id: 'C0373675'}) SET node.PREF='Magnesium' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Treatment {id: 'C0373675'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Drug {id: 'C0006675'}) SET node.PREF='Calcium' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Drug {id: 'C0006675'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:THING {id: 'C1287351'}) SET node.PREF='Liver enzyme levels' SET node.STY='Laboratory or Test Result'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:THING {id: 'C1287351'}) 
MERGE (i)-[r:RELATED]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Clinical {id: 'C2926589'}) SET node.PREF='Cardiac enzymes' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Clinical {id: 'C2926589'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Condition {id: 'C1550457'}) SET node.PREF='Normal' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Condition {id: 'C1550457'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Treatment {id: 'C0023508'}) SET node.PREF='Leukocytes' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Treatment {id: 'C0023508'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Condition {id: 'C0240173'}) SET node.PREF='Left shift' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Condition {id: 'C0240173'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Drug {id: 'C0001617'}) SET node.PREF='Corticoids' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Drug {id: 'C0001617'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Treatment {id: 'C0032181'}) SET node.PREF='Platelets' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Treatment {id: 'C0032181'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Drug {id: 'C0030054'}) SET node.PREF='Oxygen' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Drug {id: 'C0030054'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Temporal {id: 'C2709070'}) SET node.PREF='on room air' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Temporal {id: 'C2709070'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Condition {id: 'C1550457'}) SET node.PREF='Normal' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Condition {id: 'C1550457'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Clinical {id: 'C0488614'}) SET node.PREF='Vital signs' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Clinical {id: 'C0488614'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Condition {id: 'C0806915'}) SET node.PREF='Medication.discharge' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Condition {id: 'C0806915'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Treatment {id: 'C0030685'}) SET node.PREF='Release' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Treatment {id: 'C0030685'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Temporal {id: 'C1442466'}) SET node.PREF='5 days' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Temporal {id: 'C1442466'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Temporal {id: 'C0332173'}) SET node.PREF='Per Day' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Temporal {id: 'C0332173'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Condition {id: 'C0024117'}) SET node.PREF='COPD NOS' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Condition {id: 'C0024117'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Drug {id: 'C0700517'}) SET node.PREF='Keflex' SET node.STY='Antibiotic'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Drug {id: 'C0700517'}) 
MERGE (i)-[r:IS_ADMINISTERED]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Condition {id: 'C0024117'}) SET node.PREF='COPD NOS' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Condition {id: 'C0024117'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Condition {id: 'C4035626'}) SET node.PREF='3 times' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Condition {id: 'C4035626'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Condition {id: 'C0024117'}) SET node.PREF='COPD NOS' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Condition {id: 'C0024117'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Temporal {id: 'C0332173'}) SET node.PREF='Per Day' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Temporal {id: 'C0332173'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Treatment {id: 'C0005845'}) SET node.PREF='Blood urea' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Treatment {id: 'C0005845'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Drug {id: 'C0013227'}) SET node.PREF='Medicine' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Drug {id: 'C0013227'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Condition {id: 'C0018802'}) SET node.PREF='CHF NOS' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Condition {id: 'C0018802'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Treatment {id: 'C0419707'}) SET node.PREF='Pneumococcal vaccination' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Treatment {id: 'C0419707'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Temporal {id: 'C0439234'}) SET node.PREF='Year' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Temporal {id: 'C0439234'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Treatment {id: 'C0030685'}) SET node.PREF='Release' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Treatment {id: 'C0030685'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Temporal {id: 'C0580836'}) SET node.PREF='Old' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Temporal {id: 'C0580836'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Condition {id: 'C0262926'}) SET node.PREF='History' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Condition {id: 'C0262926'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Condition {id: 'C0589120'}) SET node.PREF='Follow up' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Condition {id: 'C0589120'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Condition {id: 'C0006266'}) SET node.PREF='Bronchospasm' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Condition {id: 'C0006266'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Condition {id: 'C3840916'}) SET node.PREF='4-5 days' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Condition {id: 'C3840916'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Temporal {id: 'C0332173'}) SET node.PREF='Per Day' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Temporal {id: 'C0332173'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Condition {id: 'C0262926'}) SET node.PREF='History' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Condition {id: 'C0262926'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Condition {id: 'C0010200'}) SET node.PREF='Coughs' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Condition {id: 'C0010200'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Condition {id: 'C0043144'}) SET node.PREF='Wheeze' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Condition {id: 'C0043144'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Condition {id: 'C0013404'}) SET node.PREF='Dyspnea' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Condition {id: 'C0013404'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Treatment {id: 'C0199168'}) SET node.PREF='Medical' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Treatment {id: 'C0199168'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Treatment {id: 'C0700287'}) SET node.PREF='Report' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Treatment {id: 'C0700287'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Clinical {id: 'C0488508'}) SET node.PREF='History of present illness' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Clinical {id: 'C0488508'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Temporal {id: 'C0439234'}) SET node.PREF='Year' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Temporal {id: 'C0439234'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Temporal {id: 'C0580836'}) SET node.PREF='Old' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Temporal {id: 'C0580836'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Condition {id: 'C0262926'}) SET node.PREF='History' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Condition {id: 'C0262926'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Condition {id: 'C0006266'}) SET node.PREF='Bronchospasm' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Condition {id: 'C0006266'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Temporal {id: 'C0332173'}) SET node.PREF='Per Day' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Temporal {id: 'C0332173'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Condition {id: 'C0262926'}) SET node.PREF='History' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Condition {id: 'C0262926'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Condition {id: 'C0010200'}) SET node.PREF='Coughs' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Condition {id: 'C0010200'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Condition {id: 'C0043144'}) SET node.PREF='Wheeze' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Condition {id: 'C0043144'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Condition {id: 'C0013404'}) SET node.PREF='Dyspnea' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Condition {id: 'C0013404'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Temporal {id: 'C0332173'}) SET node.PREF='Per Day' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Temporal {id: 'C0332173'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Treatment {id: 'C0184666'}) SET node.PREF='Admission' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Treatment {id: 'C0184666'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Condition {id: 'C0277854'}) SET node.PREF='dyspneic' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Condition {id: 'C0277854'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Condition {id: 'C0043144'}) SET node.PREF='Wheeze' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Condition {id: 'C0043144'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Treatment {id: 'C0184666'}) SET node.PREF='Admission' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Treatment {id: 'C0184666'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Temporal {id: 'C0205178'}) SET node.PREF='Acuteness' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Temporal {id: 'C0205178'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Condition {id: 'C1319018'}) SET node.PREF='Wheezy bronchitis' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Condition {id: 'C1319018'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Temporal {id: 'C1444637'}) SET node.PREF='In the past' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Temporal {id: 'C1444637'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Temporal {id: 'C0439231'}) SET node.PREF='Month' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Temporal {id: 'C0439231'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Condition {id: 'C0240766'}) SET node.PREF='Pipe Smoking' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Condition {id: 'C0240766'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Temporal {id: 'C0040223'}) SET node.PREF='Time' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Temporal {id: 'C0040223'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Treatment {id: 'C0184666'}) SET node.PREF='Admission' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Treatment {id: 'C0184666'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Condition {id: 'C0015967'}) SET node.PREF='Fevers' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Condition {id: 'C0015967'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Condition {id: 'C0700590'}) SET node.PREF='Diaphoresis' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Condition {id: 'C0700590'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Condition {id: 'C0027497'}) SET node.PREF='Nausea' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Condition {id: 'C0027497'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Condition {id: 'C0008031'}) SET node.PREF='Chest Pain' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Condition {id: 'C0008031'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Condition {id: 'C1457887'}) SET node.PREF='Symptom' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Condition {id: 'C1457887'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Condition {id: 'C0262926'}) SET node.PREF='History' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Condition {id: 'C0262926'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Temporal {id: 'C0231290'}) SET node.PREF='Following' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Temporal {id: 'C0231290'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Body {id: 'C0003501'}) SET node.PREF='Aortic Valve' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Body {id: 'C0003501'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Treatment {id: 'C0021107'}) SET node.PREF='Implant, NOS' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Treatment {id: 'C0021107'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Temporal {id: 'C0241301'}) SET node.PREF='Summer' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Temporal {id: 'C0241301'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Temporal {id: 'C0205191'}) SET node.PREF='Chronic' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Temporal {id: 'C0205191'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Drug {id: 'C0699129'}) SET node.PREF='Marevan' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Drug {id: 'C0699129'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Treatment {id: 'C0087111'}) SET node.PREF='Therapy' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Treatment {id: 'C0087111'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Condition {id: 'C0455527'}) SET node.PREF='History of hypertension' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Condition {id: 'C0455527'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Condition {id: 'C0262926'}) SET node.PREF='History' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Condition {id: 'C0262926'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Condition {id: 'C0020443'}) SET node.PREF='High cholesterol' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Condition {id: 'C0020443'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Treatment {id: 'C0031809'}) SET node.PREF='Physical' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Treatment {id: 'C0031809'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Body {id: 'C0018787'}) SET node.PREF='Hearts' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Body {id: 'C0018787'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Clinical {id: 'C0035234'}) SET node.PREF='Lung Sound' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Clinical {id: 'C0035234'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Condition {id: 'C3840786'}) SET node.PREF='Greatly' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Condition {id: 'C3840786'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Condition {id: 'C0034642'}) SET node.PREF='Crackle' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Condition {id: 'C0034642'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Condition {id: 'C0035508'}) SET node.PREF='Rhonchi' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Condition {id: 'C0035508'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Body {id: 'C0024109'}) SET node.PREF='Pulmones' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Body {id: 'C0024109'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Treatment {id: 'C0681827'}) SET node.PREF='Laboratory Study' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Treatment {id: 'C0681827'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Treatment {id: 'C0337443'}) SET node.PREF='Sodium' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Treatment {id: 'C0337443'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Treatment {id: 'C0202194'}) SET node.PREF='Potassium' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Treatment {id: 'C0202194'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Condition {id: 'C3844009'}) SET node.PREF='4.5' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Condition {id: 'C3844009'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Treatment {id: 'C0201975'}) SET node.PREF='Creatinine' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Treatment {id: 'C0201975'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Condition {id: 'C2239101'}) SET node.PREF='Hemoglobin' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Condition {id: 'C2239101'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Treatment {id: 'C0018935'}) SET node.PREF='Hematocrit' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Treatment {id: 'C0018935'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Clinical {id: 'C0488549'}) SET node.PREF='Hospital course' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Clinical {id: 'C0488549'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Drug {id: 'C0003232'}) SET node.PREF='Antibiotic' SET node.STY='Antibiotic'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Drug {id: 'C0003232'}) 
MERGE (i)-[r:IS_ADMINISTERED]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Treatment {id: 'C0035239'}) SET node.PREF='Pulmonary care' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Treatment {id: 'C0035239'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Drug {id: 'C0701466'}) SET node.PREF='Solumedrol' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Drug {id: 'C0701466'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Treatment {id: 'C0040808'}) SET node.PREF='Regimen' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Treatment {id: 'C0040808'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Treatment {id: 'C0039985'}) SET node.PREF='chest X ray' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Treatment {id: 'C0039985'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Drug {id: 'C0010137'}) SET node.PREF='Cortisone' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Drug {id: 'C0010137'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Treatment {id: 'C0441640'}) SET node.PREF='Tapering' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Treatment {id: 'C0441640'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Condition {id: 'C1299581'}) SET node.PREF='Able' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Condition {id: 'C1299581'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Treatment {id: 'C0030685'}) SET node.PREF='Release' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Treatment {id: 'C0030685'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Treatment {id: 'C0030685'}) SET node.PREF='Release' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Treatment {id: 'C0030685'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Condition {id: 'C0011900'}) SET node.PREF='Diagnosed' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Condition {id: 'C0011900'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Condition {id: 'C0024117'}) SET node.PREF='COPD NOS' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Condition {id: 'C0024117'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Temporal {id: 'C0205178'}) SET node.PREF='Acuteness' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Temporal {id: 'C0205178'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Condition {id: 'C1319018'}) SET node.PREF='Wheezy bronchitis' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Condition {id: 'C1319018'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Condition {id: 'C0009566'}) SET node.PREF='Complication' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Condition {id: 'C0009566'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Treatment {id: 'C0030685'}) SET node.PREF='Release' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Treatment {id: 'C0030685'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Condition {id: 'C0012634'}) SET node.PREF='Disease' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Condition {id: 'C0012634'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Treatment {id: 'C0012622'}) SET node.PREF='Discharge Planning' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Treatment {id: 'C0012622'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Drug {id: 'C0989247'}) SET node.PREF='Prednisone 20 MG' SET node.STY='Clinical Drug'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Drug {id: 'C0989247'}) 
MERGE (i)-[r:IS_ADMINISTERED]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Condition {id: 'C4035626'}) SET node.PREF='3 times' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Condition {id: 'C4035626'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Temporal {id: 'C0332173'}) SET node.PREF='Per Day' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Temporal {id: 'C0332173'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Temporal {id: 'C1442455'}) SET node.PREF='2 days' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Temporal {id: 'C1442455'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Condition {id: 'C4035627'}) SET node.PREF='2 times' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Condition {id: 'C4035627'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Temporal {id: 'C0332173'}) SET node.PREF='Per Day' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Temporal {id: 'C0332173'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Condition {id: 'C0024117'}) SET node.PREF='COPD NOS' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Condition {id: 'C0024117'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Body {id: 'C0042149'}) SET node.PREF='Uterus' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Body {id: 'C0042149'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Condition {id: 'C0334044'}) SET node.PREF='Dyscrasia' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Condition {id: 'C0334044'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Treatment {id: 'C0543467'}) SET node.PREF='Surgery' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Treatment {id: 'C0543467'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Temporal {id: 'C0332173'}) SET node.PREF='Per Day' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Temporal {id: 'C0332173'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Condition {id: 'C0006826'}) SET node.PREF='Cancer' SET node.STY='Neoplastic Process'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Condition {id: 'C0006826'}) 
MERGE (i)-[r:IS_NEOPLASTIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Condition {id: 'C0012634'}) SET node.PREF='Disease' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Condition {id: 'C0012634'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Temporal {id: 'C1548175'}) SET node.PREF='On discharge' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Temporal {id: 'C1548175'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Temporal {id: 'C0205265'}) SET node.PREF='Initial' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Temporal {id: 'C0205265'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Condition {id: 'C0015967'}) SET node.PREF='Fevers' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Condition {id: 'C0015967'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Treatment {id: 'C0013103'}) SET node.PREF='Drainage' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Treatment {id: 'C0013103'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Condition {id: 'C0019080'}) SET node.PREF='Bleeding' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Condition {id: 'C0019080'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Condition {id: 'C0030193'}) SET node.PREF='Painful' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Condition {id: 'C0030193'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Condition {id: 'C0589120'}) SET node.PREF='Follow up' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Condition {id: 'C0589120'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Temporal {id: 'C0439230'}) SET node.PREF='Week' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Temporal {id: 'C0439230'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
ERROR: Experiencer is not Patient: Other
MERGE (node:Condition {id: 'C0241889'}) SET node.PREF='FH: NOS' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Condition {id: 'C0241889'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
ERROR: Experiencer is not Patient: Other
MERGE (node:Condition {id: 'C0424945'}) SET node.PREF='Social history' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Condition {id: 'C0424945'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
ERROR: Experiencer is not Patient: Other
MERGE (node:Condition {id: 'C1458132'}) SET node.PREF='psychosocial' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Condition {id: 'C1458132'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Condition {id: 'C0806915'}) SET node.PREF='Medication.discharge' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Condition {id: 'C0806915'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Drug {id: 'C0684189'}) SET node.PREF='percocet 5' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Drug {id: 'C0684189'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Temporal {id: 'C0585323'}) SET node.PREF='Three hourly' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Temporal {id: 'C0585323'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Condition {id: 'C0030193'}) SET node.PREF='Painful' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Condition {id: 'C0030193'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Condition {id: 'C0270724'}) SET node.PREF='Seitelberger Disease' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Condition {id: 'C0270724'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Clinical {id: 'C0801840'}) SET node.PREF='Discharge sum' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Clinical {id: 'C0801840'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:THING {id: 'C1705285'}) SET node.PREF='Mutated' SET node.STY='Cell or Molecular Dysfunction'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:THING {id: 'C1705285'}) 
MERGE (i)-[r:RELATED]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Treatment {id: 'C0199168'}) SET node.PREF='Medical' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Treatment {id: 'C0199168'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Treatment {id: 'C0700287'}) SET node.PREF='Report' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Treatment {id: 'C0700287'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Treatment {id: 'C0030685'}) SET node.PREF='Release' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Treatment {id: 'C0030685'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Condition {id: 'C0011900'}) SET node.PREF='Diagnosed' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Condition {id: 'C0011900'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:THING {id: 'C1705285'}) SET node.PREF='Mutated' SET node.STY='Cell or Molecular Dysfunction'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:THING {id: 'C1705285'}) 
MERGE (i)-[r:RELATED]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Clinical {id: 'C0488508'}) SET node.PREF='History of present illness' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Clinical {id: 'C0488508'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Treatment {id: 'C0184666'}) SET node.PREF='Admission' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Treatment {id: 'C0184666'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Temporal {id: 'C0032790'}) SET node.PREF='postop' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Temporal {id: 'C0032790'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Temporal {id: 'C0439234'}) SET node.PREF='Year' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Temporal {id: 'C0439234'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Temporal {id: 'C0750729'}) SET node.PREF='Course' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Temporal {id: 'C0750729'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Temporal {id: 'C0580836'}) SET node.PREF='Old' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Temporal {id: 'C0580836'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Condition {id: 'C0277797'}) SET node.PREF='Afebrile' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Condition {id: 'C0277797'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:THING {id: 'C1705285'}) SET node.PREF='Mutated' SET node.STY='Cell or Molecular Dysfunction'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:THING {id: 'C1705285'}) 
MERGE (i)-[r:RELATED]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
ERROR: Experiencer is not Patient: Other
MERGE (node:Condition {id: 'C1306577'}) SET node.PREF='Has died' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Condition {id: 'C1306577'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Body {id: 'C0021853'}) SET node.PREF='Intestine' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Body {id: 'C0021853'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Treatment {id: 'C0030685'}) SET node.PREF='Release' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Treatment {id: 'C0030685'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
ERROR: Experiencer is not Patient: Other
MERGE (node:Condition {id: 'C0006142'}) SET node.PREF='Breast Cancer' SET node.STY='Neoplastic Process'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Condition {id: 'C0006142'}) 
MERGE (i)-[r:IS_NEOPLASTIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Temporal {id: 'C0332170'}) SET node.PREF='Morning' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Temporal {id: 'C0332170'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
ERROR: Experiencer is not Patient: Other
MERGE (node:Clinical {id: 'C1114365'}) SET node.PREF='Age' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Clinical {id: 'C1114365'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Temporal {id: 'C0032790'}) SET node.PREF='postop' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Temporal {id: 'C0032790'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
ERROR: Experiencer is not Patient: Other
MERGE (node:Condition {id: 'C0006142'}) SET node.PREF='Breast Cancer' SET node.STY='Neoplastic Process'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Condition {id: 'C0006142'}) 
MERGE (i)-[r:IS_NEOPLASTIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Temporal {id: 'C0332173'}) SET node.PREF='Per Day' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Temporal {id: 'C0332173'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
ERROR: Experiencer is not Patient: Other
MERGE (node:Clinical {id: 'C1114365'}) SET node.PREF='Age' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Clinical {id: 'C1114365'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Treatment {id: 'C1576866'}) SET node.PREF='Operations and procedures' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Treatment {id: 'C1576866'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Treatment {id: 'C0031809'}) SET node.PREF='Physical' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Treatment {id: 'C0031809'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Treatment {id: 'C0404079'}) SET node.PREF='Abdominal panhysterectomy' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Treatment {id: 'C0404079'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Treatment {id: 'C0195495'}) SET node.PREF='Bilateral Salpingectomy with Oophorectomy' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Treatment {id: 'C0195495'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Body {id: 'C1527391'}) SET node.PREF='Chest region' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Body {id: 'C1527391'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Condition {id: 'C1709157'}) SET node.PREF='Clear Margin' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Condition {id: 'C1709157'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Treatment {id: 'C0015252'}) SET node.PREF='Removal' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Treatment {id: 'C0015252'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Body {id: 'C0739153'}) SET node.PREF='Fossa ovarica' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Body {id: 'C0739153'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Body {id: 'C0000726'}) SET node.PREF='Abdomen' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Body {id: 'C0000726'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Body {id: 'C0031153'}) SET node.PREF='Peritoneal' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Body {id: 'C0031153'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Treatment {id: 'C0200045'}) SET node.PREF='Pelvic Exam' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Treatment {id: 'C0200045'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Condition {id: 'C0018808'}) SET node.PREF='Murmur' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Condition {id: 'C0018808'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Condition {id: 'C0677042'}) SET node.PREF='pathology' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Condition {id: 'C0677042'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Clinical {id: 'C0488549'}) SET node.PREF='Hospital course' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Clinical {id: 'C0488549'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Temporal {id: 'C0585361'}) SET node.PREF='Twice Daily' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Temporal {id: 'C0585361'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Body {id: 'C0015385'}) SET node.PREF='Extremity' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Body {id: 'C0015385'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Body {id: 'C0027530'}) SET node.PREF='Collum' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Body {id: 'C0027530'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0013604'}) SET node.PREF='Dropsy' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0013604'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Body {id: 'C0018787'}) SET node.PREF='Hearts' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Body {id: 'C0018787'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Drug {id: 'C0700825'}) SET node.PREF='Theo24' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Drug {id: 'C0700825'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Clinical {id: 'C0488549'}) SET node.PREF='Hospital course' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Clinical {id: 'C0488549'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:THING {id: 'C1304686'}) SET node.PREF='pH level' SET node.STY='Laboratory or Test Result'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:THING {id: 'C1304686'}) 
MERGE (i)-[r:RELATED]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Treatment {id: 'C0202155'}) SET node.PREF='Arterial oxygen tension' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Treatment {id: 'C0202155'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Temporal {id: 'C0332173'}) SET node.PREF='Per Day' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Temporal {id: 'C0332173'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Treatment {id: 'C0184666'}) SET node.PREF='Admission' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Treatment {id: 'C0184666'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Treatment {id: 'C0009555'}) SET node.PREF='CBC, NOS' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Treatment {id: 'C0009555'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Org {id: 'C0558600'}) SET node.PREF='Special care unit' SET node.STY='Health Care Related Organization'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Org {id: 'C0558600'}) 
MERGE (i)-[r:AT_LOCATION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Drug {id: 'C0986199'}) SET node.PREF='Furosemide 40 MG' SET node.STY='Clinical Drug'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Drug {id: 'C0986199'}) 
MERGE (i)-[r:IS_ADMINISTERED]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Treatment {id: 'C0559680'}) SET node.PREF='Intravenous antibiotic therapy' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Treatment {id: 'C0559680'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Temporal {id: 'C0439234'}) SET node.PREF='Year' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Temporal {id: 'C0439234'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Drug {id: 'C0721336'}) SET node.PREF='Levaquin' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Drug {id: 'C0721336'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Treatment {id: 'C0948575'}) SET node.PREF='diuretic therapy' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Treatment {id: 'C0948575'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Temporal {id: 'C0580836'}) SET node.PREF='Old' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Temporal {id: 'C0580836'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0476273'}) SET node.PREF='Distressed breathing' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0476273'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Body {id: 'C0018563'}) SET node.PREF='Hand, NOS' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Body {id: 'C0018563'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Clinical {id: 'C1881055'}) SET node.PREF='History of Coronary Artery Disease' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Clinical {id: 'C1881055'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Treatment {id: 'C0578554'}) SET node.PREF='Bronchodilator therapy' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Treatment {id: 'C0578554'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Temporal {id: 'C0332173'}) SET node.PREF='Per Day' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Temporal {id: 'C0332173'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Drug {id: 'C0982981'}) SET node.PREF='Acetazolamide 250 MG' SET node.STY='Clinical Drug'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Drug {id: 'C0982981'}) 
MERGE (i)-[r:IS_ADMINISTERED]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Temporal {id: 'C0332152'}) SET node.PREF='Before' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Temporal {id: 'C0332152'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Treatment {id: 'C0563322'}) SET node.PREF='Intravenous steroids' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Treatment {id: 'C0563322'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0027051'}) SET node.PREF='Heart Attack' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0027051'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Treatment {id: 'C0149783'}) SET node.PREF='Steroid Therapy' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Treatment {id: 'C0149783'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Temporal {id: 'C0332173'}) SET node.PREF='Per Day' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Temporal {id: 'C0332173'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Treatment {id: 'C0087111'}) SET node.PREF='Therapy' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Treatment {id: 'C0087111'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Temporal {id: 'C0332185'}) SET node.PREF='Recent' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Temporal {id: 'C0332185'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Drug {id: 'C0701466'}) SET node.PREF='Solumedrol' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Drug {id: 'C0701466'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Treatment {id: 'C0184666'}) SET node.PREF='Admission' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Treatment {id: 'C0184666'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Drug {id: 'C0987219'}) SET node.PREF='Lisinopril 20 MG' SET node.STY='Clinical Drug'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Drug {id: 'C0987219'}) 
MERGE (i)-[r:IS_ADMINISTERED]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Temporal {id: 'C0750729'}) SET node.PREF='Course' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Temporal {id: 'C0750729'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0032285'}) SET node.PREF='Pneumonia' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0032285'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Temporal {id: 'C0439228'}) SET node.PREF='Day' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Temporal {id: 'C0439228'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C1145670'}) SET node.PREF='Respiratory Failure' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C1145670'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Treatment {id: 'C0199168'}) SET node.PREF='Medical' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Treatment {id: 'C0199168'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Temporal {id: 'C0585361'}) SET node.PREF='Twice Daily' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Temporal {id: 'C0585361'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0277854'}) SET node.PREF='dyspneic' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0277854'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Treatment {id: 'C0700287'}) SET node.PREF='Report' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Treatment {id: 'C0700287'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0043144'}) SET node.PREF='Wheeze' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0043144'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C1628992'}) SET node.PREF='Admission diagnosis' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C1628992'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Drug {id: 'C0985542'}) SET node.PREF='Digoxin 0.125 MG' SET node.STY='Clinical Drug'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Drug {id: 'C0985542'}) 
MERGE (i)-[r:IS_ADMINISTERED]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0003578'}) SET node.PREF='Apneas' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0003578'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Temporal {id: 'C2746065'}) SET node.PREF='Ending' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Temporal {id: 'C2746065'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Temporal {id: 'C0205390'}) SET node.PREF='Phased' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Temporal {id: 'C0205390'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Drug {id: 'C0017887'}) SET node.PREF='Nitroglycerin' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Drug {id: 'C0017887'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0024117'}) SET node.PREF='COPD NOS' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0024117'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Drug {id: 'C0306511'}) SET node.PREF='k dur' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Drug {id: 'C0306511'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0010054'}) SET node.PREF='Cardiac sclerosis' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0010054'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0455527'}) SET node.PREF='History of hypertension' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0455527'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C1555319'}) SET node.PREF='discharge diagnosis' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C1555319'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Drug {id: 'C0033744'}) SET node.PREF='Ventolin' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Drug {id: 'C0033744'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Temporal {id: 'C3873154'}) SET node.PREF='Every four hours as needed' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Temporal {id: 'C3873154'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Temporal {id: 'C0231290'}) SET node.PREF='Following' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Temporal {id: 'C0231290'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Drug {id: 'C0699690'}) SET node.PREF='Azmacort' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Drug {id: 'C0699690'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0003578'}) SET node.PREF='Apneas' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0003578'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Temporal {id: 'C0585361'}) SET node.PREF='Twice Daily' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Temporal {id: 'C0585361'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0024117'}) SET node.PREF='COPD NOS' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0024117'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0589120'}) SET node.PREF='Follow up' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0589120'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Temporal {id: 'C0439230'}) SET node.PREF='Week' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Temporal {id: 'C0439230'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0018802'}) SET node.PREF='CHF NOS' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0018802'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Treatment {id: 'C0013516'}) SET node.PREF='Cardiac echo' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Treatment {id: 'C0013516'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Treatment {id: 'C0220825'}) SET node.PREF='Evaluate' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Treatment {id: 'C0220825'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0018802'}) SET node.PREF='CHF NOS' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0018802'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Clinical {id: 'C1881055'}) SET node.PREF='History of Coronary Artery Disease' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Clinical {id: 'C1881055'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Temporal {id: 'C0205087'}) SET node.PREF='Late' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Temporal {id: 'C0205087'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Temporal {id: 'C0332173'}) SET node.PREF='Per Day' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Temporal {id: 'C0332173'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0240859'}) SET node.PREF='Crackles' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0240859'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Treatment {id: 'C0030685'}) SET node.PREF='Release' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Treatment {id: 'C0030685'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0455527'}) SET node.PREF='History of hypertension' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0455527'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Body {id: 'C0024109'}) SET node.PREF='Pulmones' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Body {id: 'C0024109'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Treatment {id: 'C0009818'}) SET node.PREF='Consult' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Treatment {id: 'C0009818'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Body {id: 'C0024109'}) SET node.PREF='Pulmones' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Body {id: 'C0024109'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Temporal {id: 'C0439234'}) SET node.PREF='Year' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Temporal {id: 'C0439234'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Temporal {id: 'C0580836'}) SET node.PREF='Old' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Temporal {id: 'C0580836'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Treatment {id: 'C0184666'}) SET node.PREF='Admission' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Treatment {id: 'C0184666'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0018802'}) SET node.PREF='CHF NOS' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0018802'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Org {id: 'C0019994'}) SET node.PREF='Hospital' SET node.STY='Health Care Related Organization'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Org {id: 'C0019994'}) 
MERGE (i)-[r:AT_LOCATION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0476273'}) SET node.PREF='Distressed breathing' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0476273'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Drug {id: 'C0065374'}) SET node.PREF='Lisinopril' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Drug {id: 'C0065374'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Treatment {id: 'C0184666'}) SET node.PREF='Admission' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Treatment {id: 'C0184666'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Org {id: 'C0562508'}) SET node.PREF='Emergency Room' SET node.STY='Health Care Related Organization'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Org {id: 'C0562508'}) 
MERGE (i)-[r:AT_LOCATION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Drug {id: 'C0012265'}) SET node.PREF='Digoxin' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Drug {id: 'C0012265'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Clinical {id: 'C2598168'}) SET node.PREF='Respiratory status' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Clinical {id: 'C2598168'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Temporal {id: 'C1444637'}) SET node.PREF='In the past' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Temporal {id: 'C1444637'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Temporal {id: 'C0332173'}) SET node.PREF='Per Day' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Temporal {id: 'C0332173'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Treatment {id: 'C0030685'}) SET node.PREF='Release' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Treatment {id: 'C0030685'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0262926'}) SET node.PREF='History' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0262926'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Clinical {id: 'C1881055'}) SET node.PREF='History of Coronary Artery Disease' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Clinical {id: 'C1881055'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Temporal {id: 'C0332152'}) SET node.PREF='Before' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Temporal {id: 'C0332152'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0240859'}) SET node.PREF='Crackles' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0240859'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0027051'}) SET node.PREF='Heart Attack' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0027051'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Body {id: 'C1527391'}) SET node.PREF='Chest region' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Body {id: 'C1527391'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0043144'}) SET node.PREF='Wheeze' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0043144'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Temporal {id: 'C0332185'}) SET node.PREF='Recent' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Temporal {id: 'C0332185'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0013604'}) SET node.PREF='Dropsy' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0013604'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Treatment {id: 'C0184666'}) SET node.PREF='Admission' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Treatment {id: 'C0184666'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Clinical {id: 'C0018810'}) SET node.PREF='Heart Rate' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Clinical {id: 'C0018810'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Org {id: 'C0019994'}) SET node.PREF='Hospital' SET node.STY='Health Care Related Organization'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Org {id: 'C0019994'}) 
MERGE (i)-[r:AT_LOCATION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0032285'}) SET node.PREF='Pneumonia' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0032285'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Body {id: 'C0000726'}) SET node.PREF='Abdomen' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Body {id: 'C0000726'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C1145670'}) SET node.PREF='Respiratory Failure' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C1145670'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Body {id: 'C0226542'}) SET node.PREF='Neck veins' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Body {id: 'C0226542'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0700124'}) SET node.PREF='Dilate' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0700124'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0037369'}) SET node.PREF='Smoking' SET node.STY='Individual Behavior'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0037369'}) 
MERGE (i)-[r:IS_BEHAVIOUR]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Temporal {id: 'C0439231'}) SET node.PREF='Month' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Temporal {id: 'C0439231'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Treatment {id: 'C0376636'}) SET node.PREF='management' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Treatment {id: 'C0376636'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Drug {id: 'C1874451'}) SET node.PREF='Basis' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Drug {id: 'C1874451'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Temporal {id: 'C0332173'}) SET node.PREF='Per Day' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Temporal {id: 'C0332173'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0011900'}) SET node.PREF='Diagnosed' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0011900'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Treatment {id: 'C0184666'}) SET node.PREF='Admission' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Treatment {id: 'C0184666'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C1561581'}) SET node.PREF='Severe' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C1561581'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Treatment {id: 'C0184666'}) SET node.PREF='Admission' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Treatment {id: 'C0184666'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0013404'}) SET node.PREF='Dyspnea' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0013404'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Treatment {id: 'C0022885'}) SET node.PREF='Lab Test' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Treatment {id: 'C0022885'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Temporal {id: 'C0205265'}) SET node.PREF='Initial' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Temporal {id: 'C0205265'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0043144'}) SET node.PREF='Wheeze' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0043144'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Body {id: 'C0005767'}) SET node.PREF='Sanguis' SET node.STY='Tissue'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Body {id: 'C0005767'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0596601'}) SET node.PREF='Gas' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0596601'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0010200'}) SET node.PREF='Coughs' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0010200'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:THING {id: 'C0391839'}) SET node.PREF='carbon dioxide partial pressure' SET node.STY='Laboratory or Test Result'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:THING {id: 'C0391839'}) 
MERGE (i)-[r:RELATED]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0008031'}) SET node.PREF='Chest Pain' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0008031'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Temporal {id: 'C0332152'}) SET node.PREF='Before' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Temporal {id: 'C0332152'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0013404'}) SET node.PREF='Dyspnea' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0013404'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0013798'}) SET node.PREF='Electrocardiogram' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0013798'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Treatment {id: 'C0184666'}) SET node.PREF='Admission' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Treatment {id: 'C0184666'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0429103'}) SET node.PREF='T wave' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0429103'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Treatment {id: 'C0031809'}) SET node.PREF='Physical' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Treatment {id: 'C0031809'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Treatment {id: 'C0948762'}) SET node.PREF='Neutrophils' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Treatment {id: 'C0948762'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Treatment {id: 'C3812897'}) SET node.PREF='General' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Treatment {id: 'C3812897'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Clinical {id: 'C2926604'}) SET node.PREF='Disposition' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Clinical {id: 'C2926604'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0028754'}) SET node.PREF='Obesity' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0028754'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0425687'}) SET node.PREF='Jugular venous distension' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0425687'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Treatment {id: 'C0030685'}) SET node.PREF='Release' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Treatment {id: 'C0030685'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0039231'}) SET node.PREF='Pulse fast' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0039231'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Treatment {id: 'C2266673'}) SET node.PREF='Discharge instructions' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Treatment {id: 'C2266673'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0018808'}) SET node.PREF='Murmur' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0018808'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Treatment {id: 'C0012159'}) SET node.PREF='ActClassDiet' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Treatment {id: 'C0012159'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Body {id: 'C0024109'}) SET node.PREF='Pulmones' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Body {id: 'C0024109'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0238844'}) SET node.PREF='Decreased air entry' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0238844'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Treatment {id: 'C0337443'}) SET node.PREF='Sodium' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Treatment {id: 'C0337443'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C1709157'}) SET node.PREF='Clear Margin' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C1709157'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Treatment {id: 'C0012159'}) SET node.PREF='ActClassDiet' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Treatment {id: 'C0012159'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0000925'}) SET node.PREF='Cut' SET node.STY='Injury or Poisoning'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0000925'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0034642'}) SET node.PREF='Crackle' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0034642'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Drug {id: 'C0013227'}) SET node.PREF='Medicine' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Drug {id: 'C0013227'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0043144'}) SET node.PREF='Wheeze' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0043144'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Drug {id: 'C0989247'}) SET node.PREF='Prednisone 20 MG' SET node.STY='Clinical Drug'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Drug {id: 'C0989247'}) 
MERGE (i)-[r:IS_ADMINISTERED]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Temporal {id: 'C0205421'}) SET node.PREF='Delayed' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Temporal {id: 'C0205421'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Condition {id: 'C1299581'}) SET node.PREF='Able' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Condition {id: 'C1299581'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Temporal {id: 'C0439232'}) SET node.PREF='Minute' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Temporal {id: 'C0439232'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Condition {id: 'C1299581'}) SET node.PREF='Able' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Condition {id: 'C1299581'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Condition {id: 'C0684328'}) SET node.PREF='Reasoning' SET node.STY='Mental Process'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Condition {id: 'C0684328'}) 
MERGE (i)-[r:IS_MENTALPROCESS]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Condition {id: 'C0229992'}) SET node.PREF='Psyche' SET node.STY='Mental Process'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Condition {id: 'C0229992'}) 
MERGE (i)-[r:IS_MENTALPROCESS]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Temporal {id: 'C0175668'}) SET node.PREF='Secondary' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Temporal {id: 'C0175668'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Condition {id: 'C0038454'}) SET node.PREF='Stroke' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Condition {id: 'C0038454'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Drug {id: 'C0025646'}) SET node.PREF='Methionine' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Drug {id: 'C0025646'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Clinical {id: 'C0488549'}) SET node.PREF='Hospital course' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Clinical {id: 'C0488549'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Temporal {id: 'C0443252'}) SET node.PREF='Long Term' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Temporal {id: 'C0443252'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Treatment {id: 'C0087111'}) SET node.PREF='Therapy' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Treatment {id: 'C0087111'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Temporal {id: 'C0439234'}) SET node.PREF='Year' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Temporal {id: 'C0439234'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Temporal {id: 'C0580836'}) SET node.PREF='Old' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Temporal {id: 'C0580836'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Condition {id: 'C0678856'}) SET node.PREF='skills' SET node.STY='Individual Behavior'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Condition {id: 'C0678856'}) 
MERGE (i)-[r:IS_BEHAVIOUR]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Org {id: 'C1552471'}) SET node.PREF='Medical Center' SET node.STY='Health Care Related Organization'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Org {id: 'C1552471'}) 
MERGE (i)-[r:AT_LOCATION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Treatment {id: 'C0037831'}) SET node.PREF='SPEECH THER' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Treatment {id: 'C0037831'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Org {id: 'C0587478'}) SET node.PREF='Rehabilitation department' SET node.STY='Health Care Related Organization'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Org {id: 'C0587478'}) 
MERGE (i)-[r:AT_LOCATION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Treatment {id: 'C0030685'}) SET node.PREF='Release' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Treatment {id: 'C0030685'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Condition {id: 'C0678856'}) SET node.PREF='skills' SET node.STY='Individual Behavior'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Condition {id: 'C0678856'}) 
MERGE (i)-[r:IS_BEHAVIOUR]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Treatment {id: 'C1704289'}) SET node.PREF='Services' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Treatment {id: 'C1704289'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Treatment {id: 'C0037831'}) SET node.PREF='SPEECH THER' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Treatment {id: 'C0037831'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Treatment {id: 'C0087111'}) SET node.PREF='Therapy' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Treatment {id: 'C0087111'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Temporal {id: 'C0175668'}) SET node.PREF='Secondary' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Temporal {id: 'C0175668'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Treatment {id: 'C0030685'}) SET node.PREF='Release' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Treatment {id: 'C0030685'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Temporal {id: 'C0205265'}) SET node.PREF='Initial' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Temporal {id: 'C0205265'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Condition {id: 'C0011900'}) SET node.PREF='Diagnosed' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Condition {id: 'C0011900'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Treatment {id: 'C0220825'}) SET node.PREF='Evaluate' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Treatment {id: 'C0220825'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Condition {id: 'C0684336'}) SET node.PREF='Impairment' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Condition {id: 'C0684336'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Temporal {id: 'C0175668'}) SET node.PREF='Secondary' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Temporal {id: 'C0175668'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Condition {id: 'C1513302'}) SET node.PREF='Mild' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Condition {id: 'C1513302'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Condition {id: 'C0038454'}) SET node.PREF='Stroke' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Condition {id: 'C0038454'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Condition {id: 'C1299586'}) SET node.PREF='Difficult' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Condition {id: 'C1299586'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Condition {id: 'C0233735'}) SET node.PREF='Naming' SET node.STY='Mental Process'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Condition {id: 'C0233735'}) 
MERGE (i)-[r:IS_MENTALPROCESS]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Org {id: 'C1552471'}) SET node.PREF='Medical Center' SET node.STY='Health Care Related Organization'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Org {id: 'C1552471'}) 
MERGE (i)-[r:AT_LOCATION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Condition {id: 'C0162340'}) SET node.PREF='Understand' SET node.STY='Mental Process'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Condition {id: 'C0162340'}) 
MERGE (i)-[r:IS_MENTALPROCESS]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Org {id: 'C0587478'}) SET node.PREF='Rehabilitation department' SET node.STY='Health Care Related Organization'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Org {id: 'C0587478'}) 
MERGE (i)-[r:AT_LOCATION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Condition {id: 'C0678856'}) SET node.PREF='skills' SET node.STY='Individual Behavior'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Condition {id: 'C0678856'}) 
MERGE (i)-[r:IS_BEHAVIOUR]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Condition {id: 'C0034770'}) SET node.PREF='Recall' SET node.STY='Mental Process'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Condition {id: 'C0034770'}) 
MERGE (i)-[r:IS_MENTALPROCESS]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Treatment {id: 'C0037831'}) SET node.PREF='SPEECH THER' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Treatment {id: 'C0037831'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Temporal {id: 'C0175668'}) SET node.PREF='Secondary' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Temporal {id: 'C0175668'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Condition {id: 'C0678856'}) SET node.PREF='skills' SET node.STY='Individual Behavior'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Condition {id: 'C0678856'}) 
MERGE (i)-[r:IS_BEHAVIOUR]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Treatment {id: 'C0199168'}) SET node.PREF='Medical' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Treatment {id: 'C0199168'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Treatment {id: 'C0700287'}) SET node.PREF='Report' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Treatment {id: 'C0700287'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Treatment {id: 'C0037831'}) SET node.PREF='SPEECH THER' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Treatment {id: 'C0037831'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Temporal {id: 'C0556987'}) SET node.PREF='Thrice weekly' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Temporal {id: 'C0556987'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Condition {id: 'C0684336'}) SET node.PREF='Impairment' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Condition {id: 'C0684336'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Temporal {id: 'C0439230'}) SET node.PREF='Week' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Temporal {id: 'C0439230'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Temporal {id: 'C0040223'}) SET node.PREF='Time' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Temporal {id: 'C0040223'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Temporal {id: 'C0443303'}) SET node.PREF='short term' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Temporal {id: 'C0443303'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Treatment {id: 'C0087111'}) SET node.PREF='Therapy' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Treatment {id: 'C0087111'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Clinical {id: 'C2979882'}) SET node.PREF='Goals' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Clinical {id: 'C2979882'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Condition {id: 'C1299581'}) SET node.PREF='Able' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Condition {id: 'C1299581'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Condition {id: 'C0577559'}) SET node.PREF='A mass' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Condition {id: 'C0577559'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Condition {id: 'C1299581'}) SET node.PREF='Able' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Condition {id: 'C1299581'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Condition {id: 'C0004309'}) SET node.PREF='listen' SET node.STY='Mental Process'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Condition {id: 'C0004309'}) 
MERGE (i)-[r:IS_MENTALPROCESS]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Condition {id: 'C0034770'}) SET node.PREF='Recall' SET node.STY='Mental Process'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Condition {id: 'C0034770'}) 
MERGE (i)-[r:IS_MENTALPROCESS]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Drug {id: 'C0052080'}) SET node.PREF='Antineoplaston A10' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Drug {id: 'C0052080'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Temporal {id: 'C0439232'}) SET node.PREF='Minute' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Temporal {id: 'C0439232'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Temporal {id: 'C0205421'}) SET node.PREF='Delayed' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Temporal {id: 'C0205421'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Condition {id: 'C1299581'}) SET node.PREF='Able' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Condition {id: 'C1299581'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Condition {id: 'C1705179'}) SET node.PREF='Reading' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Condition {id: 'C1705179'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Condition {id: 'C0034770'}) SET node.PREF='Recall' SET node.STY='Mental Process'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Condition {id: 'C0034770'}) 
MERGE (i)-[r:IS_MENTALPROCESS]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Temporal {id: 'C0439232'}) SET node.PREF='Minute' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Temporal {id: 'C0439232'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Treatment {id: 'C1522577'}) SET node.PREF='Followup' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Treatment {id: 'C1522577'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Temporal {id: 'C0032790'}) SET node.PREF='postop' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Temporal {id: 'C0032790'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Treatment {id: 'C2266673'}) SET node.PREF='Discharge instructions' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Treatment {id: 'C2266673'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Condition {id: 'C0009450'}) SET node.PREF='Infection' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Condition {id: 'C0009450'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Treatment {id: 'C1962945'}) SET node.PREF='Radiology' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Treatment {id: 'C1962945'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Treatment {id: 'C3161471'}) SET node.PREF='TREATMENT' SET node.STY='Research Activity'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Treatment {id: 'C3161471'}) 
MERGE (i)-[r:IS_RESEARCH]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Treatment {id: 'C0020710'}) SET node.PREF='Uteroscopy' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Treatment {id: 'C0020710'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Treatment {id: 'C0012358'}) SET node.PREF='D and C' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Treatment {id: 'C0012358'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Treatment {id: 'C0012358'}) SET node.PREF='D and C' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Treatment {id: 'C0012358'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Treatment {id: 'C0195309'}) SET node.PREF='Myomectomy' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Treatment {id: 'C0195309'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Condition {id: 'C1561581'}) SET node.PREF='Severe' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Condition {id: 'C1561581'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Condition {id: 'C0232943'}) SET node.PREF='Menometrorrhagia' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Condition {id: 'C0232943'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Condition {id: 'C0237284'}) SET node.PREF='Unresponsive' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Condition {id: 'C0237284'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Treatment {id: 'C0418981'}) SET node.PREF='Medical therapy' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Treatment {id: 'C0418981'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Condition {id: 'C0238644'}) SET node.PREF='Anemia, severe' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Condition {id: 'C0238644'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Condition {id: 'C0042133'}) SET node.PREF='Fibroids' SET node.STY='Neoplastic Process'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Condition {id: 'C0042133'}) 
MERGE (i)-[r:IS_NEOPLASTIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Treatment {id: 'C0199168'}) SET node.PREF='Medical' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Treatment {id: 'C0199168'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Treatment {id: 'C0700287'}) SET node.PREF='Report' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Treatment {id: 'C0700287'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Treatment {id: 'C0184666'}) SET node.PREF='Admission' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Treatment {id: 'C0184666'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Condition {id: 'C0011900'}) SET node.PREF='Diagnosed' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Condition {id: 'C0011900'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Condition {id: 'C1561581'}) SET node.PREF='Severe' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Condition {id: 'C1561581'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Condition {id: 'C0232943'}) SET node.PREF='Menometrorrhagia' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Condition {id: 'C0232943'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Condition {id: 'C0237284'}) SET node.PREF='Unresponsive' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Condition {id: 'C0237284'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Treatment {id: 'C0418981'}) SET node.PREF='Medical therapy' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Treatment {id: 'C0418981'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Condition {id: 'C0238644'}) SET node.PREF='Anemia, severe' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Condition {id: 'C0238644'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Condition {id: 'C0042133'}) SET node.PREF='Fibroids' SET node.STY='Neoplastic Process'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Condition {id: 'C0042133'}) 
MERGE (i)-[r:IS_NEOPLASTIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Treatment {id: 'C0030685'}) SET node.PREF='Release' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Treatment {id: 'C0030685'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Condition {id: 'C0011900'}) SET node.PREF='Diagnosed' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Condition {id: 'C0011900'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Condition {id: 'C1561581'}) SET node.PREF='Severe' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Condition {id: 'C1561581'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Condition {id: 'C0232943'}) SET node.PREF='Menometrorrhagia' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Condition {id: 'C0232943'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Condition {id: 'C0237284'}) SET node.PREF='Unresponsive' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Condition {id: 'C0237284'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Treatment {id: 'C0418981'}) SET node.PREF='Medical therapy' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Treatment {id: 'C0418981'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Condition {id: 'C0238644'}) SET node.PREF='Anemia, severe' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Condition {id: 'C0238644'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Condition {id: 'C0042133'}) SET node.PREF='Fibroids' SET node.STY='Neoplastic Process'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Condition {id: 'C0042133'}) 
MERGE (i)-[r:IS_NEOPLASTIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Treatment {id: 'C0450010'}) SET node.PREF='Operation performed' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Treatment {id: 'C0450010'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Treatment {id: 'C0020710'}) SET node.PREF='Uteroscopy' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Treatment {id: 'C0020710'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Treatment {id: 'C0012358'}) SET node.PREF='D and C' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Treatment {id: 'C0012358'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Treatment {id: 'C0012358'}) SET node.PREF='D and C' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Treatment {id: 'C0012358'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Treatment {id: 'C0195309'}) SET node.PREF='Myomectomy' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Treatment {id: 'C0195309'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Condition {id: 'C0009566'}) SET node.PREF='Complication' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Condition {id: 'C0009566'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Body {id: 'C0227844'}) SET node.PREF='Cavitas uteri' SET node.STY='Body Space or Junction'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Body {id: 'C0227844'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Condition {id: 'C0023267'}) SET node.PREF='Fibroid' SET node.STY='Neoplastic Process'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Condition {id: 'C0023267'}) 
MERGE (i)-[r:IS_NEOPLASTIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Treatment {id: 'C0012737'}) SET node.PREF='Dissection' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Treatment {id: 'C0012737'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Treatment {id: 'C0015252'}) SET node.PREF='Removal' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Treatment {id: 'C0015252'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Treatment {id: 'C0005841'}) SET node.PREF='Transfusion' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Treatment {id: 'C0005841'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Drug {id: 'C2316467'}) SET node.PREF='Packed erythrocytes' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Drug {id: 'C2316467'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Treatment {id: 'C0018935'}) SET node.PREF='Hematocrit' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Treatment {id: 'C0018935'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Condition {id: 'C2239101'}) SET node.PREF='Hemoglobin' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Condition {id: 'C2239101'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Clinical {id: 'C0488549'}) SET node.PREF='Hospital course' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Clinical {id: 'C0488549'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Treatment {id: 'C0184666'}) SET node.PREF='Admission' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Treatment {id: 'C0184666'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Treatment {id: 'C0543467'}) SET node.PREF='Surgery' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Treatment {id: 'C0543467'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Org {id: 'C0029064'}) SET node.PREF='Operating Room' SET node.STY='Health Care Related Organization'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Org {id: 'C0029064'}) 
MERGE (i)-[r:AT_LOCATION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Treatment {id: 'C0012358'}) SET node.PREF='D and C' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Treatment {id: 'C0012358'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Treatment {id: 'C0012358'}) SET node.PREF='D and C' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Treatment {id: 'C0012358'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Treatment {id: 'C0020710'}) SET node.PREF='Uteroscopy' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Treatment {id: 'C0020710'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Body {id: 'C0227844'}) SET node.PREF='Cavitas uteri' SET node.STY='Body Space or Junction'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Body {id: 'C0227844'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Condition {id: 'C0023267'}) SET node.PREF='Fibroid' SET node.STY='Neoplastic Process'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Condition {id: 'C0023267'}) 
MERGE (i)-[r:IS_NEOPLASTIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Treatment {id: 'C0522772'}) SET node.PREF='Shaving' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Treatment {id: 'C0522772'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Treatment {id: 'C0015252'}) SET node.PREF='Removal' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Treatment {id: 'C0015252'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Condition {id: 'C0023267'}) SET node.PREF='Fibroid' SET node.STY='Neoplastic Process'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Condition {id: 'C0023267'}) 
MERGE (i)-[r:IS_NEOPLASTIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Treatment {id: 'C0015252'}) SET node.PREF='Removal' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Treatment {id: 'C0015252'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Condition {id: 'C0023267'}) SET node.PREF='Fibroid' SET node.STY='Neoplastic Process'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Condition {id: 'C0023267'}) 
MERGE (i)-[r:IS_NEOPLASTIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Treatment {id: 'C0740166'}) SET node.PREF='Hemostasis' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Treatment {id: 'C0740166'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Temporal {id: 'C2746065'}) SET node.PREF='Ending' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Temporal {id: 'C2746065'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Treatment {id: 'C0184661'}) SET node.PREF='Procedure' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Treatment {id: 'C0184661'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Drug {id: 'C2316467'}) SET node.PREF='Packed erythrocytes' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Drug {id: 'C2316467'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Temporal {id: 'C0456904'}) SET node.PREF='Intraoperative' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Temporal {id: 'C0456904'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Condition {id: 'C0019080'}) SET node.PREF='Bleeding' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Condition {id: 'C0019080'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Condition {id: 'C1299586'}) SET node.PREF='Difficult' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Condition {id: 'C1299586'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Treatment {id: 'C0012159'}) SET node.PREF='ActClassDiet' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Treatment {id: 'C0012159'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Condition {id: 'C0871633'}) SET node.PREF='desire' SET node.STY='Mental Process'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Condition {id: 'C0871633'}) 
MERGE (i)-[r:IS_MENTALPROCESS]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Treatment {id: 'C0030685'}) SET node.PREF='Release' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Treatment {id: 'C0030685'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Treatment {id: 'C0030685'}) SET node.PREF='Release' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Treatment {id: 'C0030685'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Condition {id: 'C0012634'}) SET node.PREF='Disease' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Condition {id: 'C0012634'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Treatment {id: 'C2266673'}) SET node.PREF='Discharge instructions' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Treatment {id: 'C2266673'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Treatment {id: 'C0012159'}) SET node.PREF='ActClassDiet' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Treatment {id: 'C0012159'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Treatment {id: 'C0004910'}) SET node.PREF='Bedrest' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Treatment {id: 'C0004910'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Temporal {id: 'C1442452'}) SET node.PREF='1 week' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Temporal {id: 'C1442452'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Condition {id: 'C1550457'}) SET node.PREF='Normal' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Condition {id: 'C1550457'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Temporal {id: 'C1442462'}) SET node.PREF='3 weeks' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Temporal {id: 'C1442462'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Body {id: 'C0030797'}) SET node.PREF='Pelvic' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Body {id: 'C0030797'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Temporal {id: 'C0439230'}) SET node.PREF='Week' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Temporal {id: 'C0439230'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Drug {id: 'C1241844'}) SET node.PREF='vicodin tablet' SET node.STY='Clinical Drug'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Drug {id: 'C1241844'}) 
MERGE (i)-[r:IS_ADMINISTERED]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Condition {id: 'C0030193'}) SET node.PREF='Painful' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Condition {id: 'C0030193'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Drug {id: 'C0301532'}) SET node.PREF='Multivitamin' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Drug {id: 'C0301532'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Temporal {id: 'C0332173'}) SET node.PREF='Per Day' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Temporal {id: 'C0332173'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Drug {id: 'C0060282'}) SET node.PREF='Iron sulfate' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Drug {id: 'C0060282'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Temporal {id: 'C0332173'}) SET node.PREF='Per Day' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Temporal {id: 'C0332173'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Condition {id: 'C4036205'}) SET node.PREF='Ambulate' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Condition {id: 'C4036205'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
