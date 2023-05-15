Profile: BePopulationScreeningPlan
Parent: CarePlan
Id: be-populationscreening-plan
Title: "PopulationScreening Plan"
Description: """A longitudinal plan for a patient's screening activities.
This resource exists to articulate the different activities as part of following a defined plan for certain populations."""

* identifier MS

* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "coding.system"
* category ^slicing.rules = #open
* category ^slicing.description = "Slice based on the type of code"

* category contains cancerScreeningType 1..1

* category[cancerScreeningType].coding.system = Canonical(BeVSPopulationScreeningType)
* category[cancerScreeningType] from BeVSPopulationScreeningType
* subject only Reference(BePatient)
* author 1..1
* author only Reference(BeOrganization)
* activity MS
  * detail.reasonReference MS
  * outcomeReference MS
  * detail.reasonReference only Reference(BeObservation)
  * reference only Reference(BePopulationScreeningFollowUp or BePopulationScreeningAppointment)

Profile: BePopulationScreeningCommunication
Parent: Communication
Id: be-populationscreening-communication
Title: "PopulationScreening Communication"
Description: """Communication following a patient's screening activities.
"""

* identifier MS

* topic from BeVSPopulationScreeningNextInvitationType

* payload.contentAttachment MS
* sender 1..1
* recipient 1..*
* about MS

* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "coding.system"
* category ^slicing.rules = #open
* category ^slicing.description = "Slice based on the type of code"



* category contains cancerScreeningType 1..1

* category[cancerScreeningType].coding.system = Canonical(BeVSPopulationScreeningType)
* category[cancerScreeningType] from BeVSPopulationScreeningType
