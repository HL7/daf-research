# DAF-Research Profile List, Capability Statements and Mappings from FHIR to PCORnet CDM and OMOP CDM

The next few sections identify the [US-Core] profiles used by DAF-Research, profiles defined by the [DAF-Research] IG, capability statements specific to DAF-Research, resource/data element mappings from FHIR to PCORnet CDM and from FHIR to OMOP CDM.


## US-Core profiles reused by DAF-Research




## Base FHIR Resources used by DAF-Research 



## DAF-Research defined profiles



## DAF-Research capability statements



## Mappings from FHIR to PCORnet CDM 

|PCORnet CDM Table Name            |Recommended Profile for Data Extraction|
|----------------------------------|----------------------------------------|
|DIAGNOSIS, CONDITION|[Condition](daf-condition.html)*|
|LAB_RESULT_CM|[DiagnosticReport-Results](us-core-diagnosticreport.html)|
|ENCOUNTER|[Encounter](daf-encounter.html)|
|Prescribing|[MedicationOrder](us-core-medicationorder.html)|
|DISPENSING|[MedicationDispense](daf-medicationdispense.html)*|
|LAB_RESULT_CM|[Observation](us-core-resultobs.html)|
|VITALS|[Observation-Vitalsigns](us-core-vitalsigns.html)|
|DEMOGRAPHIC|[Patient](daf-patient.html)*|
|PROCEDURES|[Procedure](us-core-procedure.html)|
|PRO CM|Questionaire Profile - TBD|
|ENROLLMENT|Potential New Resource - TBD|
|PCORNET_TRIAL|Potential New Resource - TBD|
|DEATH|Potential New Resource/Profile - TBD|
|DEATH_CAUSE|Potential New Resource/Profile - TBD|
|HARVEST|New Resource - TBD|


(*) Indicate DAF-Research specific profiles which are created from US-Core profiles.


## Mappings from FHIR to OMOP CDM

|OMOP Table Name            |Recommended Profile for Data Extraction|
|----------------------------------|----------------------------------------|
|Concept,Vocabulary,Domain,Concept_Synonym,Concept_Ancestor|ValueSet **|
|Concept_Class|Concept **|
|Concept_Relationship, Relationship|ConceptMap **|
|Cohort_Definition, Attribute_Definition|Group **|
|Specimen|Specimen **|
|Drug_Strength|[Medication](us-core-medication.html)|
|Procedure_Occurence|[Procedure](us-core-procedure.html)|
|Drug_Exposure|[MedicationOrder](us-core-medicationorder.html),[MedicationStatement](us-core-medicationstatement.html),[Immunization](us-core-immunization.html)|
|Device_Exposure|[Procedure](us-core-procedure.html),[Device](us-core-device.html)|
|Measurement,Note,Observation|[Observation](us-core-resultobs.html)|
|Person|[Patient](daf-patient.html)*|
|Observation_Period, Visit_Occurence|[Encounter](daf-encounter.html)|
|Condition_Occurence|[Condition](daf-condition.html)*|


(***) Base FHIR Resources without any specific profiles, (**) DAF-Research specific profiles


[DAF-Core]: daf-core.html
[US-Core]: us-core.html
[DAF-Research]: daf-research.html
[Office of the National Coordinator (ONC)]: http://www.healthit.gov/newsroom/about-onc 
[ONC]: http://www.healthit.gov/newsroom/about-onc
[Data Access Framework]: http://wiki.siframework.org/Data+Access+Framework+Homepage
[DAF]: http://wiki.siframework.org/Data+Access+Framework+Homepage
[PCORI]:  http://www.pcori.org
[PCORnet]: http://www.pcornet.org/
[Argonaut]: http://argonautwiki.hl7.org/index.php?title=Main_Page* 
[ASPE]: https://aspe.hhs.gov/
[DAF-Research-intro]: daf-research-intro.html
[C1, C2, C3, C4]: daf-research-intro.html
[Data Source Conformance]: capabilitystatement-daf-datasource.html
[Data Mart Conformance]: capabilitystatement-daf-datamart.html
[Research Query Composer Conformance]: capabilitystatement-daf-datasource.html
[Research Query Responder Conformance]: capabilitystatement-daf-datasource.html
[DAF-Task]: daf-task.html
[DAF-Provenance]: daf-provenance.html
[DAF-OperationDefinition]: daf-operationdefinition.html
[DAF-Conformance]: daf-conformance.html
[DAF-QueryResults]: daf-queryresults.html
[PCORnet CDM]: http://pcornet.org/pcornet-common-data-model/
[OMOP CDM]: http://omop.org/CDM
[PCORnet]: http://www.pcornet.org/
[HHS de-identification guidance]: https://www.hhs.gov/hipaa/for-professionals/privacy/special-topics/de-identification/

