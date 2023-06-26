Profile: BePopulationScreeningEncounter
Parent: Encounter
Id: be-populationscreening-encounter
Title: "Population Screening Encounter"
Description: "Encounter Profile for screening - participation in population screening"
* ^status = #draft
* ^experimental = true
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 1
//* extension contains BePopulationScreeningEpisodeOfCare named Episode 1..1
* identifier MS
* type MS
* subject 1..1 MS
* period MS
* location MS
* appointment MS


Profile: BePopulationScreeningObservation
Parent: BeObservation
Id: be-populationscreening-observation
Title: "Population Screening Observation"
Description: "Observation result of screening"
* ^status = #draft
* ^experimental = true
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 1
* identifier MS
* code MS
* code from BeVSPopulationScreeningType (preferred)
* valueCodeableConcept MS
* valueCodeableConcept from BePopulationScreeningResultVS (preferred)
//* extension contains BePopulationScreeningEpisodeOfCare named Episode 1..1 MS

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
* location.location = Reference(mammographicUnit)
* subject = Reference(JaneDoe)
* contained[0] = mammographicUnit
// * extension.url = "https://www.ehealth.fgov.be/standards/fhir/public-health/StructureDefinition/BePopulationScreeningEpisodeOfCare"
// * extension.valueReference = Reference(exampleEpisodePopulationScreening)


Instance: PositiveBreastCancerResult
InstanceOf: BePopulationScreeningObservation
Usage: #example
Title: "Positive Breast Cancer Result"
Description: "Observation with positive/abnormal result"
* status = #final
* code = $sct#280415008
* performer = Reference(Organization/CvKO)
* encounter = Reference(BreastCancerEncounterExample)
// * extension.url = "https://www.ehealth.fgov.be/standards/fhir/public-health/StructureDefinition/BePopulationScreeningEpisodeOfCare"
// * extension.valueReference = Reference(exampleEpisodePopulationScreening)




ValueSet: BePopulationScreeningResultVS
Id: be-populationscreening-result-vs
Title: "PopulationScreening Result Value Set"
Description: "Result"
* ^experimental = true
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 1
* $sct#280415008 "Abnormal result"
* $sct#280413001 "Normal result"