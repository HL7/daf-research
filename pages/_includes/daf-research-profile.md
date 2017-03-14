## {{ page.title }}

The next few sections identify the profiles used by DAF-Research and capability statements specific to DAF-Research along with resource/data element mappings between FHIR and PCORnet CDM and between FHIR and OMOP CDM.


## DAF-Research defined profiles and operations
The following is a list of DAF-Research defined profiles and operations that are used for implementing PCORnet actors and capabilities along with their workflow requirements.

|DAF-Research Profiles and Operations           |Usage|
|--------------------------------------------|------------------------------------------------------|
|[DAF-Task]|The profile is used to satisfy PCORnet workflow requirements for data extraction, data mart loading, submitting queries and returning results.|
|[DAF-Provenance]|The profile is used to keep track of provenance data for data mart loading, submitting queries and getting results back.|
|[DAF-OperationDefinition]|The profile is used to publish what data models and what query formats are supported for each DAF-Research operation.|
|[DAF-CapabilityStatement]|The profile is used to publish what operations are supported by each DAF-Research actor.|
|[DAF-QueryResults]|The profile is used to provide aggregate results to the Researcher who submits queries.|
|[daf-extract-operation]|The operation is used to extract data for all or a subset of patients from data sources using FHIR APIs.|
|[daf-load-operation]|The operation is used to load data extracted from data sources in data marts.|
|[daf-execute-query]|The operation is used to execute a DAF-Research query and create query results.|


## Profiles and FHIR Resources used by DAF-Research for Data Extraction and Data Mapping
This paragraph identifies a list of profiles from US-Core that are reused by DAF-Research, along with ones explicitly defined by DAF-Research.
In addition a few of the FHIR Resources are used without profiling currently. These resources may be profiled in the future depending on feedback obtained from DAF-Research pilots.

### US-Core profiles used by DAF-Research
* [Condition](http://build.fhir.org/ig/Healthedata1/US-Core//StructureDefinition-us-core-condition.html)
* [DiagnosticReport-Results](http://build.fhir.org/ig/Healthedata1/US-Core//StructureDefinition-us-core-diagnosticreport.html)
* [Location](http://build.fhir.org/ig/Healthedata1/US-Core//StructureDefinition-us-core-location.html)
* [Medication](http://build.fhir.org/ig/Healthedata1/US-Core//StructureDefinition-us-core-medication.html)
* [MedicationStatement](http://build.fhir.org/ig/Healthedata1/US-Core//StructureDefinition-us-core-medicationstatement.html)
* [MedicationRequest](http://build.fhir.org/ig/Healthedata1/US-Core//StructureDefinition-us-core-medicationrequest.html)
* [Observation](http://build.fhir.org/ig/Healthedata1/US-Core//StructureDefinition-us-core-observationresults.html)
* [Observation-Vitalsigns](http://build.fhir.org/observation-vitalsigns.html)
* [Patient](http://build.fhir.org/ig/Healthedata1/US-Core//StructureDefinition-us-core-patient.html)
* [Practitioner](http://build.fhir.org/ig/Healthedata1/US-Core//StructureDefinition-us-core-practitioner.html)
* [Procedure](http://build.fhir.org/ig/Healthedata1/US-Core//StructureDefinition-us-core-procedure.html)


### DAF-Research specific profiles of US-Core
We are not profiling any of the US-Core profiles but may add if needed based on pilot feedback.


### Base FHIR Resources used without profiling by DAF-Research
* [Encounter](http://build.fhir.org/encounter.html)
* [Group](http://build.fhir.org/group.html)
* [MedicationDispense](http://build.fhir.org/medicationdispense.html)
* [Questionnaire](http://build.fhir.org/questionnaire.html)
* [ResearchStudy](http://build.fhir.org/researchstudy.html)
* [ResearchSubject](http://build.fhir.org/researchsubject.html)



## Mappings from FHIR to PCORnet CDM

NOTE: Mappings from one data model to another such as FHIR to PCORnet CDM or FHIR to OMOP etc, always have a potential for data loss. In these cases where there is not an exact mapping between codes the extraction process is encouraged to include the actual raw values if permitted by the data model. For example in FHIR the Coding element can be used to accommodate all the local values which were used to translate to standardized codes.


|PCORnet CDM Table Name            |Recommended Profile/Resource for Data Extraction|
|----------------------------------|----------------------------------------|
|DIAGNOSIS, CONDITION|[Condition](http://build.fhir.org/ig/Healthedata1/US-Core//StructureDefinition-us-core-condition.html)|
|LAB_RESULT_CM|[DiagnosticReport-Results](http://build.fhir.org/ig/Healthedata1/US-Core//StructureDefinition-us-core-diagnosticreport.html),[Observation](http://build.fhir.org/ig/Healthedata1/US-Core//StructureDefinition-us-core-observationresults.html)|
|ENCOUNTER|[Encounter](http://build.fhir.org/encounter.html)|
|PRESCRIBING|[MedicationOrder](http://build.fhir.org/ig/Healthedata1/US-Core//StructureDefinition-us-core-medicationrequest.html)|
|DISPENSING|[MedicationDispense](http://build.fhir.org/medicationdispense.html)|
|VITALS|[Observation-Vitalsigns](http://build.fhir.org/observation-vitalsigns.html)|
|DEMOGRAPHIC|[Patient](http://build.fhir.org/ig/Healthedata1/US-Core//StructureDefinition-us-core-patient.html)|
|PROCEDURES|[Procedure](http://build.fhir.org/ig/Healthedata1/US-Core//StructureDefinition-us-core-procedure.html)|
|PRO CM|[Questionaire](http://build.fhir.org/questionnaire.html),[Observation](http://build.fhir.org/observation.html)|
|ENROLLMENT|[ResearchSubject](http://build.fhir.org/researchsubject.html)|
|PCORNET_TRIAL|[ResearchStudy](http://build.fhir.org/researchstudy.html)
|DEATH|[Patient](http://build.fhir.org/ig/Healthedata1/US-Core//StructureDefinition-us-core-patient.html)|
|DEATH_CAUSE|[Patient](http://build.fhir.org/ig/Healthedata1/US-Core//StructureDefinition-us-core-patient.html)|
|HARVEST|[DAF-CapabilityStatement]|


A detailed data element level mapping can be accessed here:

[FHIR to PCORnet CDM mapping](https://docs.google.com/spreadsheets/d/1Gw-j7GSlDA0rxJqpSRI6g9ZPRk7LHPnE5-AJuWd1ry0/edit#gid=1928349566)


## Mappings between FHIR and OMOP CDM

|OMOP Table Name            |Recommended Profile/Resource for Data Extraction|
|----------------------------------|----------------------------------------|
|Concept,Vocabulary,Domain,Concept_Synonym,Concept_Ancestor|[ValueSet](http://build.fhir.org/valueset.html)|
|Concept_Class|[Concept](http://build.fhir.org/dataelement.html)|
|Concept_Relationship, Relationship|[ConceptMap](http://build.fhir.org/conceptmap.html)|
|Cohort_Definition, Attribute_Definition|[Group](http://build.fhir.org/group.html)|
|Specimen|[Specimen](http://build.fhir.org/specimen.html)|
|Drug_Strength|[Medication](http://build.fhir.org/ig/Healthedata1/US-Core//StructureDefinition-us-core-medication.html)|
|Procedure_Occurence|[Procedure](http://build.fhir.org/ig/Healthedata1/US-Core//StructureDefinition-us-core-procedure.html)|
|Drug_Exposure|[MedicationOrder](http://build.fhir.org/ig/Healthedata1/US-Core//StructureDefinition-us-core-medicationrequest.html),[MedicationStatement](http://build.fhir.org/ig/Healthedata1/US-Core//StructureDefinition-us-core-medicationstatement.html),[Immunization](http://build.fhir.org/ig/Healthedata1/US-Core//StructureDefinition-us-core-immunization.html)|
|Device_Exposure|[Procedure](http://build.fhir.org/ig/Healthedata1/US-Core//StructureDefinition-us-core-procedure.html),[Device](http://build.fhir.org/ig/Healthedata1/US-Core//StructureDefinition-us-core-device.html)|
|Measurement,Note,Observation|[Observation](http://build.fhir.org/ig/Healthedata1/US-Core//StructureDefinition-us-core-observationresults.html)|
|Person|[Patient](http://build.fhir.org/ig/Healthedata1/US-Core//StructureDefinition-us-core-patient.html)|
|Observation_Period, Visit_Occurence|[Encounter](http://build.fhir.org/encounter.html)|
|Condition_Occurence|[Condition](http://build.fhir.org/ig/Healthedata1/US-Core//StructureDefinition-us-core-condition.html)|

A detailed data element level mapping can be accessed here:

[OMOP to FHIR mapping](https://docs.google.com/spreadsheets/d/11ZmwGxnXViLkTVdX5Vi0FP-Gh4AD2HZEfYOhzZptZfw/edit#gid=0)




[US-Core]: http://build.fhir.org/ig/Healthedata1/US-Core//index.html
[DAF-Research]: daf-research.html
[Office of the National Coordinator (ONC)]: http://www.healthit.gov/newsroom/about-onc
[ONC]: http://www.healthit.gov/newsroom/about-onc
[Data Access Framework]: http://wiki.siframework.org/Data+Access+Framework+Homepage
[DAF]: http://wiki.siframework.org/Data+Access+Framework+Homepage
[PCORI]:  http://www.pcori.org
[PCORnet]: http://www.pcornet.org/
[Argonaut]: http://argonautwiki.hl7.org/index.php?title=Main_Page*
[ASPE]: https://aspe.hhs.gov/
[DAF-Research-intro]: index.html
[C1, C2, C3, C4]: index.html
[Data Source Conformance]: CapabilityStatement-daf-datasource.html
[Data Mart Conformance]: CapabilityStatement-daf-datamart.html
[Research Query Composer Conformance]: CapabilityStatement-daf-research-queryrequester.html
[Research Query Responder Conformance]: CapabilityStatement-daf-research-queryresponder.html
[daf-extract-operation]: OperationDefinition-daf-extract.html
[daf-load-operation]: OperationDefinition-daf-load.html
[daf-execute-query]: OperationDefinition-daf-execute-query.html
[DAF-Task]: StructureDefinition-daf-task.html
[DAF-Provenance]: StructureDefinition-daf-provenance.html
[DAF-OperationDefinition]: StructureDefinition-daf-operationdefinition.html
[DAF-CapabilityStatement]: StructureDefinition-daf-capabilitystatement.html
[DAF-QueryResults]: StructureDefinition-daf-queryresults.html
[PCORnet CDM]: http://pcornet.org/pcornet-common-data-model/
[OMOP CDM]: http://omop.org/CDM
[PCORnet]: http://www.pcornet.org/
[HHS de-identification guidance]: https://www.hhs.gov/hipaa/for-professionals/privacy/special-topics/de-identification/
