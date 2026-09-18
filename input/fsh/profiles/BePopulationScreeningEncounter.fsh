Profile: BePopulationScreeningEncounter
Parent: Encounter
Id: be-populationscreening-encounter
Title: "Population Screening Encounter"
Description: "Encounter Profile for screening - participation in population screening"
//* ^status = #draft
* ^experimental = true
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 1
//* extension contains BePopulationScreeningEpisodeOfCare named Episode 1..1
* identifier MS
* subject 1..1 MS
* subject only Reference(BePatient)
* period MS
* location MS
* appointment MS
* appointment only Reference(BePopulationScreeningAppointment)