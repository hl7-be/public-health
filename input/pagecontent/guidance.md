### Data exchange
The Public Health - Cancer Screening specification tracks the scheduling and performance of cancer screenings, including the results and eventual follow-up from such screenings.

The scope of data is shown in the [logical model](StructureDefinition-BeModelPopulationScreening.html). The several data structures and their relationship to the model is shown in the diagram below:


<img src="ph-modeloverview.png"  width="100%">

Note that the different resources contain the key data elements that are defined and captured in the scope of a cancer screening. These resources are all related to the same [Patient](https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition-be-patient.html) resource. 

In addition, 2 areas are left to implementer and are not speciffied in this edition of the Implementation Guide:

#### Linking resources
The above resources are linked by a resource that describes the present screening data, as well as eventually tracking past and future screenings. Several alternatives are possible:

|Approach|Summary|Implementation Considerations|
|---|---|---|
|**CarePlan**| Using a CarePlan to link the different activities and outcomes| The CarePlan adds a new resource (for which a Belgian core resource is defined) which links the activities. The CarePlan also allows better integration with the patient's care activities and goals and care integration, as well as short- and long-term planning. Finally, the CarePlan can be updated when the screening protocols are defined computably, to facilitate interoperability around the definition and maintenance of such care plans.|
|**Composition**|Using a Composition that links to the resources| The Composition resource is used to establish a coherent view of the screening process and results. Unlike CarePlan, a Composition does not imply any functional meaning, ratther simply establishes a resource that contains links to other resources, like a [FHIR Document](https://hl7.org/fhir/R4/documents.html). Note that Composition can be used in addition to CarePlan.|
|**Custom extensions**|Using additional resources and extensions to link the artifacts|It is possible to use other resources and extensions to link to/from the different resources, but this should be considered given the expected evolution of the screening guidance (extensions are normally purpose-specific).
{:.table-bordered}
<br/>

#### Resource uniqueness
All the resources used in the data exchange should use a business identifier. This business identifier can reside in the [namespace](https://hl7.org/fhir/R4/datatypes-definitions.html#Identifier.system) of the creator (cancer screening provider), and is used to establish the uniqueness of the content.
The resources needed to identify the screening event shall have a unique identifier: Appointment and Encounter. In addition, the overall grouping resource (e.g. CarePlan) shall have its unique identifier.


### Informing patient and communicating next appointments
The message that is to be sent to the patient may depend on the current screening date, the screening type, the results, and any other circumstances for the patient.
While the input for creating such message is standardized, the content of such message is left for implementers. If the message is to be persisted as part of the overall Cancer Screening planning and execution, resources like Communication may be used for this purpose. 

<br/>
<br/>