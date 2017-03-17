

## {{ page.title }}


DAF-Research IG will focus on enabling researchers to access data from multiple organizations in the context of Learning Health System (LHS). While DAF-Research IG can be applied to multiple use cases, the current requirements have been drawn heavily from PCORnet use cases and implementations. The capabilities described as part of the IG are intended to be leveraged to build our nation's data infrastructure for a Learning Health System.
DAF-Research will leverage the US-Core IG and profiles for the resources that overlap with US-Core. In addition DAF-Research will create additional profiles necessary for DAF-Research purposes which do not exist in US-Core. The US-Core has been created with substantial feedback from the Argonaut project.

# Guidance to the Reader
The following table will provide a roadmap for the reader.

|Topic of Interest|What it contains|Where can I find it|
|--------------------|--------------------------|---------------------|
|US-Core IG|A core set of FHIR profiles expected to be supported widely by vendors in the US.|[US-Core](http://build.fhir.org/ig/Healthedata1/US-Core//index.html)|
|Basic Definitions|The set of definitions applicable to the IG such as "Supported".|[US-Core Definitions](http://build.fhir.org/ig/Healthedata1/US-Core//guidance.html)|
|DAF-Research IG Background|The artifact provides background on LHS, PCORI and PCORnet activities.|[Background](background.html)|
|Capabilities and Actors|The artifact defines the various capabilities and actors that make up the DAF-Research IG.|[Capabilities and Actors](index.html#capabilities-actors-and-conformance-requirements)|
|Profiles and Data Element Mappings|The artifact provides a complete list of profiles used by DAF-Research and resource/data mappings to PCORnet CDM and OMOP CDM.|[Profile List](profiles.html)|
|Developer Guidance|The artifact contains data mapping spreadsheets, deployment options, examples that will help implementers of DAF-Research IG.|[Implementation Guidance](guidance.html)|

# Capabilities, Actors and Conformance Requirements
The following table outlines the various DAF-Research Capabilities specified as part of the IG, the actors associated with the capability and a link to the conformance requirements for the actor.

|Capability|Actors|Conformance Requirements|
|------------------|----------------|---------------------|
|C1: Standardize data extraction mechanism from clinical data sources to populate data marts which can then be accessed by Researchers.|Data Source|[Data Source Conformance](CapabilityStatement-daf-datasource.html)|
||Data Mart|[Data Mart Conformance](CapabilityStatement-daf-datamart.html)|
|C2: Publish Metadata about data sources useful for Researchers to access data.|Data Mart|[Data Mart Conformance](CapabilityStatement-daf-datamart.html)|
|C3: Standardize Query Distribution mechanism from Researchers to Data Marts facilitating workflows.|Research Query Requester|[Research Query Requester Conformance](CapabilityStatement-daf-research-queryrequester.html)|
|C4: Standardize Aggregate Query Results return from Data Marts back to Researchers in response to a C3 query.|Research Query Responder|[Research Query Responder Conformance](CapabilityStatement-daf-research-queryresponder.html)|

----

Primary Authors: Brett Marquard, Nagesh Bashyam, Eric Haas

Secondary Authors: Grahame Grieve, Lloyd McKenzie



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
[Research Query Composer Conformance]: CapabilityStatement-daf-datasource.html
[Research Query Responder Conformance]: CapabilityStatement-daf-datasource.html
[DAF-Task]:StructureDefinition-daf-task.html
[DAF-Provenance]:StructureDefinition-daf-provenance.html
[DAF-OperationDefinition]:StructureDefinition-daf-operationdefinition.html
[DAF-Conformance]:StructureDefinition-daf-conformance.html
[DAF-QueryResults]:StructureDefinition-daf-queryresults.html
[PCORnet CDM]: http://pcornet.org/pcornet-common-data-model/
[OMOP CDM]: http://omop.org/CDM
[PCORnet]: http://www.pcornet.org/
[HHS de-identification guidance]: https://www.hhs.gov/hipaa/for-professionals/privacy/special-topics/de-identification/
