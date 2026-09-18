Instance: PositiveBreastCancerResultExample
InstanceOf: BePopulationScreeningObservation
Usage: #example
Title: "Positive Breast Cancer Result Example"
Description: "Observation with positive/abnormal result"
* status = #final
* code = $sct#268547008
* valueCodeableConcept = $sct#280415008
* performer = Reference(Organization/CvKO)
* subject = Reference(FemalePatientExample)
* effectiveDateTime = "2021-07-17"
* encounter = Reference(BreastCancerEncounterExample)
// * extension.url = "https://www.ehealth.fgov.be/standards/fhir/public-health/StructureDefinition/BePopulationScreeningEpisodeOfCare"
// * extension.valueReference = Reference(exampleEpisodePopulationScreening)