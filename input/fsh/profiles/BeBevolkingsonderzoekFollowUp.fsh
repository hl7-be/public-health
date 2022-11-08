Profile: BePopulationScreeningFollowUp
Parent: ServiceRequest
Id: be-populationscreening-follow-up
Title: "Be PopulationScreening Follow Up"
Description: """These are an indication which actions a patient can take next or which follow up examinations are proposed. This is a proposal. 
This resource exists to notify the patient that the patient should request additional examinations if the result was positive. 
If the screening was negative, the follow up examination should not be performed. In case of a negative result, the resource should not exist."
* ^purpose = "Notify the patient about possible follow up examinations/actions the patient can take."""
* ^status = #draft
* intent = #proposal (exactly)
* subject only Reference(BePatient)
* code from BeVSPopulationScreeningFollowUpAdvice (extensible)
* bodySite from BeVSPopulationScreeningBodySiteLocation (extensible)
* patientInstruction
* occurrence[x]
* extension contains BePopulationScreeningEpisodeOfCare named Episode 1..1 MS

ValueSet: BeVSPopulationScreeningFollowUpAdvice
Description: "Possible follow up actions"
* ^status = #draft
* http://snomed.info/sct#73761001 "Colonoscopy"

ValueSet: BeVSPopulationScreeningBodySiteLocation
Id: be-vspopulationscreening-body-site-location
Title: "Be VS PopulationScreening Body Site Location"
Description: "Location on body"
* ^status = #draft
* http://snomed.info/sct#14742008 "Dikke darm"

Instance: ColorectalCancerScreeningFollowUpExample
InstanceOf: BePopulationScreeningFollowUp
Usage: #example
Title: "Colorectal Cancer Screening Follow Up Example Positive"
Description: "Follow up after positive colorectal cancer screening"
* intent = #proposal
* status = #active
* subject = Reference(JaneDoe)
* code = http://snomed.info/sct#73761001
* patientInstruction = "Colonoscopie"
* bodySite = http://snomed.info/sct#14742008
* bodySite.text = "Dikke darm"
* extension.url = "https://www.ehealth.fgov.be/standards/fhir/public-health/StructureDefinition/BePopulationScreeningEpisodeOfCare"
* extension.valueReference = Reference(exampleEpisodePopulationScreening)

Instance: BreastCancerScreeningFollowUpExample
InstanceOf: BePopulationScreeningFollowUp
Usage: #example
Title: "Breast Cancer Screening Follow Up Example"
Description: "Follow up after positive breast cancer screening. This is a proposal. This resource exists to notify the patient that the patient should request additional examinations."
* intent = #proposal
* status = #active
* subject = Reference(JaneDoe)
* patientInstruction = "Ga naar de arts die u hebt opgegeven bij het onderzoek, dit is uw huisarts of gynaecoloog of andere, voor een verwijsbrief voor bijkomend onderzoek."
* extension.url = "https://www.ehealth.fgov.be/standards/fhir/public-health/StructureDefinition/BePopulationScreeningEpisodeOfCare"
* extension.valueReference = Reference(exampleEpisodePopulationScreening)

Instance: JaneDoe
InstanceOf: BePatient
Description: "female example patient"
* name.family = "Doe"
* name.given = "Jane"
* gender = #female