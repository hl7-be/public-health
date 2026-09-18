Profile: BePopulationScreeningFollowUp
Parent: ServiceRequest
Id: be-populationscreening-follow-up
Title: "Population Screening Follow-Up"
Description: """An indication of which actions a patient can take next, or which follow up examinations are proposed. This is a proposal. 
This resource exists to notify the patient that the patient should request additional examinations if the result was positive. 
If the screening was negative, no follow up examination is expected - so no instance of this resource is expected.
"""
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 1
* ^purpose = "Notify the patient about possible follow up examinations/actions the patient can take."
//* ^status = #draft
* intent = #proposal (exactly)
* identifier MS
* intent and code and subject and bodySite and reasonReference MS
* subject only Reference(BePatient)
* code from BeVSPopulationScreeningFollowUpAdvice (example)
* bodySite from BeVSPopulationScreeningBodySiteLocation (example)
* occurrence[x]
//* extension contains BePopulationScreeningEpisodeOfCare named Episode 1..1 MS

//Instance: BreastCancerScreeningFollowUpExample
//InstanceOf: BePopulationScreeningFollowUp
//Usage: #example
//Title: "Breast Cancer Screening Follow Up Example"
//Description: "Follow up after positive breast cancer screening. This is a proposal. This resource exists to notify the patient that the patient should request additional examinations."
//* intent = #proposal
//* status = #active
//* subject = Reference(JaneDoe)
// // * extension.url = "https://www.ehealth.fgov.be/standards/fhir/public-health/StructureDefinition/BePopulationScreeningEpisodeOfCare"
// // * extension.valueReference = Reference(exampleEpisodePopulationScreening)