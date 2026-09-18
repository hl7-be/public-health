Instance: BreastCancerEncounterExample
InstanceOf: BePopulationScreeningEncounter
Usage: #example
Title: "Breast Cancer Encounter Example"
Description: "Participation for breastcancer screening"
* status = #finished
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #AMB
//* episodeOfCare = Reference(exampleEpisodePopulationScreening)
* appointment = Reference(BreastCancerScreeningAppointment)
* period.start = "2022-03-15T11:30:00.000+02:00"
* location.location = Reference(MammographicUnitExample)
* subject = Reference(FemalePatientExample)
* contained[0] = MammographicUnitExample
// * extension.url = "https://www.ehealth.fgov.be/standards/fhir/public-health/StructureDefinition/BePopulationScreeningEpisodeOfCare"
// * extension.valueReference = Reference(exampleEpisodePopulationScreening)