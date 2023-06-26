### Send/Update Screening Information ###
This implementation guide defines one simple transaction, the submission of screening information (new submission or an update).

#### Involved Actors ####

- [Screening Information Provider](actors.html#screening-information-provider)
- [Screening Information Receiver](actors.html#screening-information-receiver)


#### Involved FHIR Resources ####
These resources are specifically profiled for this specification.

- Appointment ([BePopulationScreeningAppointment](./StructureDefinition-be-populationscreening-appointment.html))
- Encounter ([BePopulationScreeningEncounter](./StructureDefinition-be-populationscreening-encounter.html))
- ServiceRequest ([BePopulationScreeningFollowUp](./StructureDefinition-be-populationscreening-follow-up.html))
- Observation ([BePopulationScreeningObservation](./StructureDefinition-be-populationscreening-observation.html))


In addition, other resources are expected to be part of a working specification: Core resources like [Patient](https://ehealth.fgov.be/standards/fhir/core/StructureDefinition-be-patient.html), and resources that may be optionally used - which are not specifically profiled in this release. For example,

- [Bundle](http://hl7.org/fhir/R4/bundle.html)
- [CarePlan](http://hl7.org/fhir/R4/careplan.html)
- [Composition](http://hl7.org/fhir/R4/composition.html)



#### Description

The Screening Information provider will send the necessary resources, for example as a Batch Bundle, containing the resources indicated above. This Bundle resource will be sent to the Bundle FHIR REST API endpoint of the Screening Information Receiver using the POST method [Batch/Transaction Guidelines](http://hl7.org/fhir/R4/http.html#transaction). The Screening Information Receiver will receive an answer according the guidelines in the [Batch/Transaction Response Guidelines](http://hl7.org/fhir/R4/http.html#transaction-response).


#### Diagram

 <div>
{% include send-update-screening-information.svg %}
</div>


#### Description

The Screening Information Provider sends the resources in a Bundle, each resource containing its unique ID.  

The Screening Information Receiver receives the information, checks it for conformance and uses the unique identifiers to determine the integrity of the information and whether the update is possible and acceptable, depending on business rules. It then updates or creates the data in the receiving system (or rejects the submission, if there is any error).  
From the result, the Screening Information Provider determines whether to keep track of the submission, or resubmit the information or adjust the content, in case of error.


<br/>



