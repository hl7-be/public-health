Profile: BePopulationScreeningPlan
Parent: CarePlan
Id: be-populationscreening-plan
Title: "PopulationScreening Plan"
Description: """A longitudinal plan for a patient's screening activities.
This resource exists to articulate the different activities as part of following a defined plan for certain populations."""
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 1

* partOf MS 
* identifier MS

* category MS
* author MS

* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "coding.system"
* category ^slicing.rules = #open
* category ^slicing.description = "Slice based on the type of code"

* category contains cancerScreeningType 1..1

* category[cancerScreeningType].coding.system = "http://snomed.info/sct"
* category[cancerScreeningType] from BeVSPopulationScreeningType
* subject only Reference(BePatient)
* author 1..1
* author only Reference(BeOrganization)
* activity MS
  * detail.reasonReference MS
  * outcomeReference MS
  * detail.reasonReference only Reference(BeObservation)
  * detail.reasonReference MS
  * reference only Reference(BePopulationScreeningFollowUp or BePopulationScreeningAppointment) 
  * reference MS

Profile: BePopulationScreeningCommunication
Parent: Communication
Id: be-populationscreening-communication
Title: "PopulationScreening Communication"
Description: """Communication following a patient's screening activities.
"""
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 1

* identifier MS

* topic from BeVSPopulationScreeningNextInvitationType 
* topic MS

* payload.contentAttachment MS
* sender 1..1 MS
* sender only Reference(BeOrganization)
* recipient 1..* MS
* recipient only Reference(BePatient)
* about MS
* subject 1..1 MS

* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "coding.system"
* category ^slicing.rules = #open
* category ^slicing.description = "Slice based on the type of code"



* category contains cancerScreeningType 1..1 MS

* category[cancerScreeningType].coding.system = "http://snomed.info/sct"
* category[cancerScreeningType] from BeVSPopulationScreeningType
