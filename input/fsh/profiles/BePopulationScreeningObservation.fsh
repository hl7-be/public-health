Profile: BePopulationScreeningObservation
Parent: BeObservation
Id: be-populationscreening-observation
Title: "Population Screening Observation"
Description: "Observation result of screening"
//* ^status = #draft
* ^experimental = true
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 1
* identifier MS
* code MS
* code from BeVSPopulationScreeningType (preferred)
* valueCodeableConcept MS
* valueCodeableConcept from BeVSPopulationScreeningResult (preferred)
* encounter MS
* encounter only Reference(BePopulationScreeningEncounter)
//* extension contains BePopulationScreeningEpisodeOfCare named Episode 1..1 MS
