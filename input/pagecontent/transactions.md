### Send/Update Screening Information ###

#### Involved Actors ####

- Screening Information Provider
- Screening Information Receiver

#### Involved Logical Model ####

 - BePopulationScreeningLogicalModel

#### Involved FHIR Resources ####

- Bundle ([Bundle](http://hl7.org/fhir/R4/bundle.html))
- EpisodeOfCare ([BePopulationBasedScreeningEpisodeOfCare](./StructureDefinition-Be-PopulationScreening-EpisodeOfCare.html))
- Appointment ([BePopulationScreeningAppointment](./StructureDefinition-be-populationscreening-appointment.html))
- Encounter ([BePopulationScreeningEncounter](./StructureDefinition-be-populationscreening-encounter.html))
- ServiceRequest ([BePopulationScreeningFollowUp](./StructureDefinition-be-populationscreening-follow-up.html))
- Observation ([BePopulationScreeningObservation](./StructureDefinition-be-populationscreening-observation.html))

#### Description ####

The Screening Information provider will create a Batch Bundle type, containing a necessary resources. This bundle can contain more than EpisodeOfCare, and for each EpisodeOfCare, it will contain the resources that are referred to (directly or indirectly). This Bundle resource will be sent to the Bundle FHIR REST API endpoint of the Screening Information Receiver using the POST method [Batch/Transaction Guidelines](http://hl7.org/fhir/R4/http.html#transaction). The Screening Information Receiver will receive an answer according the guidelines in the [Batch/Transaction Response Guidelines](http://hl7.org/fhir/R4/http.html#transaction-response)

#### Diagram ####

 <div>
{% include send-update-screening-information.svg %}
</div>







