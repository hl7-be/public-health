Profile: BePopulationScreeningAppointment
Parent: Appointment
Id: be-populationscreening-appointment
Title: "Be PopulationScreening Appointment"
Description: "Appointment for populationscreening"
* ^status = #draft
* extension contains BePopulationScreeningEpisodeOfCare named Episode 1..1 MS

Instance: BreastCancerScreeningAppointment
InstanceOf: BePopulationScreeningAppointment
Usage: #example
Title: "Appointment Breast Cancer Screening"
Description: "Appointment for mammography in a mammographic unit in context of breast cancer screening"
* status = #booked
* start = "2022-03-15T00:00:00.000+02:00"
* end = "2022-03-15T23:59:00.000+02:00"
* participant[0].actor = Reference(JaneDoe)
* participant[=].status = #tentative
* participant[+].actor = Reference(mammographicUnit)
* participant[=].status = #accepted
* extension.url = "https://www.ehealth.fgov.be/standards/fhir/public-health/StructureDefinition/BePopulationScreeningEpisodeOfCare"
* extension.valueReference = Reference(exampleEpisodePopulationScreening)
* contained[0] = mammographicUnit

Instance: ColonCancerScreeningAppointment
InstanceOf: BePopulationScreeningAppointment
Usage: #example
Title: "Appointment Colon Cancer Screening"
Description: "Appointment for stool sample in context of colon cancer screening"
* status = #booked
* start = "2022-03-15T00:00:00.000+02:00"
* end = "2022-03-15T23:59:00.000+02:00"
* participant[0].actor = Reference(JaneDoe)
* participant[=].status = #tentative
* extension.url = "https://www.ehealth.fgov.be/standards/fhir/public-health/StructureDefinition/BePopulationScreeningEpisodeOfCare"
* extension.valueReference = Reference(exampleEpisodePopulationScreening)


Instance: CervicalCancerScreeningAppointment
InstanceOf: BePopulationScreeningAppointment
Usage: #example
Title: "Appointment Cervical Cancer Screening"
Description: "Proposed appointment in context of cervical cancer screening"
* status = #proposed
* start = "2022-03-15T00:00:00.000+02:00"
* end = "2022-03-15T23:59:00.000+02:00"
* participant[0].actor = Reference(JaneDoe)
* participant[=].status = #tentative
* extension.url = "https://www.ehealth.fgov.be/standards/fhir/public-health/StructureDefinition/BePopulationScreeningEpisodeOfCare"
* extension.valueReference = Reference(exampleEpisodePopulationScreening)
