Profile: BePopulationScreeningAppointment
Parent: Appointment
Id: be-populationscreening-appointment
Title: "Population Screening Appointment"
Description: "Appointment Profile for population screening"
//* ^status = #draft
* ^experimental = true
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 1
//* extension contains BePopulationScreeningEpisodeOfCare named Episode 1..1 MS
* identifier MS
* start MS
* end MS
  * ^short = "Because of the international resource, end is required, but it can be equal to start."

* participant.actor.type 1..1


* participant ^slicing.discriminator.type = #value
* participant ^slicing.discriminator.path = "actor.type"
* participant ^slicing.rules = #open
* participant ^slicing.description = "Type of participant"


* participant contains
  patient 1..1 and 
  location 0..1

* participant[patient].actor only Reference(BePatient)
* participant[location].actor only Reference(Location)
* participant[location].actor.type = #Location
* participant[patient].actor.type = #Patient

* participant[patient] MS
* participant[location] MS


Instance: BreastCancerScreeningAppointment
InstanceOf: BePopulationScreeningAppointment
Usage: #example
Title: "Appointment Breast Cancer Screening"
Description: "Appointment for mammography in a mammographic unit in context of breast cancer screening"

* status = #booked
* start = "2022-03-15T00:00:00.000+02:00"
* end = "2022-03-15T23:59:00.000+02:00"
* participant[patient].actor = Reference(JaneDoe)
* participant[patient].status = #tentative
* participant[location].actor = Reference(mammographicUnit)
* participant[location].status = #accepted
* participant[patient].actor.type = #Patient
* participant[location].actor.type = #Location
//* extension.url = "https://www.ehealth.fgov.be/standards/fhir/public-health/StructureDefinition/BePopulationScreeningEpisodeOfCare"
//* extension.valueReference = Reference(exampleEpisodePopulationScreening)
* contained[0] = mammographicUnit

Instance: ColonCancerScreeningAppointment
InstanceOf: BePopulationScreeningAppointment
Usage: #example
Title: "Appointment Colon Cancer Screening"
Description: "Appointment for stool sample in context of colon cancer screening"
* status = #booked
* start = "2022-03-15T00:00:00.000+02:00"
* end = "2022-03-15T23:59:00.000+02:00"
* participant[patient].actor = Reference(JaneDoe)
* participant[patient].status = #tentative
* participant[patient].actor.type = #Patient
// * extension.url = "https://www.ehealth.fgov.be/standards/fhir/public-health/StructureDefinition/BePopulationScreeningEpisodeOfCare"
// * extension.valueReference = Reference(exampleEpisodePopulationScreening)


Instance: CervicalCancerScreeningAppointment
InstanceOf: BePopulationScreeningAppointment
Usage: #example
Title: "Appointment Cervical Cancer Screening"
Description: "Proposed appointment in context of cervical cancer screening"
//* language = #nl-BE
* status = #proposed
* start = "2022-03-15T00:00:00.000+02:00"
* end = "2022-03-15T23:59:00.000+02:00"
* participant[patient].actor = Reference(JaneDoe)
* participant[patient].status = #tentative
* participant[patient].actor.type = #Patient
// * extension.url = "https://www.ehealth.fgov.be/standards/fhir/public-health/StructureDefinition/BePopulationScreeningEpisodeOfCare"
// * extension.valueReference = Reference(exampleEpisodePopulationScreening)
