Profile:        BePopulationBasedScreeningEpisodeOfCare
Parent:         EpisodeOfCare
Id:             Be-PopulationScreening-EpisodeOfCare
Title:          "BE Episode PopulationScreening"
Description:    "Manages a recurring periodical workflow for diagnostics in regard to a specific Condition."
* ^status = #draft
* patient only Reference(BePatient)
* patient 1..1
* type from PopulationScreeningScreeningVS (extensible) 
* extension contains PopulationScreeningNextInvitationIndicationDate named nextInvitationDate 0..1
* extension contains PopulationScreeningNextInvitationIndication named nextInvitationIndication 1..1

Extension: PopulationScreeningNextInvitationIndicationDate
Description: "The estimated date on which to expect the next invitation"
* ^status = #draft
* value[x] only date

Extension: PopulationScreeningNextInvitationIndication
Description: "This is variable text giving an estimate when the next screening is scheduled, if there is any and why."
* ^status = #draft
* value[x] only string

Extension: BePopulationScreeningEpisodeOfCare
//Parent: workflow-episodeOfCare
Description: "A periodic episode for a population based screening"
* ^status = #draft
* value[x] only Reference(BePopulationBasedScreeningEpisodeOfCare)

Instance: cvko-id
InstanceOf: NamingSystem
Usage: #definition
Title: "cvko-id"
Description: "Internal id for identification of resource with cvko"
* status = #draft
* name = "CVKONamingSystem"
* kind = #identifier
* date = "2022-06-08"
* uniqueId[0].type = #uri
* uniqueId[=].value = "https://www.ehealth.fgov.be/standards/fhir/public-health/NamingSystem/cvkoId"
* uniqueId[=].preferred = true

Alias: $sct = http://snomed.info/sct

Instance: exampleEpisodePopulationScreening
InstanceOf: BePopulationBasedScreeningEpisodeOfCare
Usage: #example
* status = #active
* identifier.system = "http://example.org/sampleepisodeofcare-identifier"
* identifier.value = "123"
* patient = Reference(exampleMaleBePatient)
* managingOrganization = Reference(CvKO)
* period.start = "2014-09-01"
* type = $sct#762444001
* type.text = "Dikkedarmkanker"
* extension.url = "https://www.ehealth.fgov.be/standards/fhir/public-health/StructureDefinition/PopulationScreeningNextInvitationIndication"
* extension.valueString = "De datum van volgende uitnodiging is afhankelijk van de uitslag van het verdere onderzoek."


Instance: exampleMaleBePatient
InstanceOf: BePatient
Usage: #example
* identifier[SSIN].system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin"
* identifier[SSIN].value = "12345"
* name.family = "Jack"
* name.given = "Bauer"
* gender = #male

Instance: CvKO
InstanceOf: Organization
Usage: #example
* name = "Centrum voor Kankeropsporing"
* alias = "CvKO"


ValueSet: PopulationScreeningScreeningVS
Id: populationscreening-screening-vs
Title: "PopulationScreening Screening VS"
Description: "PopulationScreening screening types"
* ^status = #draft
* ^experimental = false
* $sct#268547008 "Borstkanker"
* $sct#762444001 "Dikkedarmkanker"
* $sct#171149006 "Baarmoederhalskanker"