Instance: ColorectalCancerScreeningFollowUpExample
InstanceOf: BePopulationScreeningFollowUp
Usage: #example
Title: "Positive Colorectal Cancer Screening Follow-Up Example"
Description: "Example of a proposed follow-up after a positive colorectal cancer screening result."
* intent = #proposal
* status = #active
* subject = Reference(FemalePatientExample)
* code = http://snomed.info/sct#73761001
* bodySite = http://snomed.info/sct#14742008
* bodySite.text = "Dikke darm"
// * extension.url = "https://www.ehealth.fgov.be/standards/fhir/public-health/StructureDefinition/BePopulationScreeningEpisodeOfCare"
// * extension.valueReference = Reference(exampleEpisodePopulationScreening)
