// Profile:        BePopulationBasedScreeningEpisodeOfCare
// Parent:         EpisodeOfCare
// Id:             Be-PopulationScreening-EpisodeOfCare
// Title:          "BE Episode PopulationScreening"
// Description:    "Manages a recurring periodical workflow for diagnostics in regard to a specific Condition."
// * ^status = #draft
// * ^experimental = true
// * patient only Reference(BePatient)
// * patient 1..1
// * type from PopulationScreeningScreeningVS (extensible) 
// * extension contains PopulationScreeningNextInvitation named nextInvitation  1..1 MS

/*
Extension: PopulationScreeningNextInvitation
Description: "The estimated date on which to expect the next invitation"
* ^status = #draft
* extension contains 
    type 1..1 MS and
    date 0..1 MS

* extension[type] ^short = "Indication for a new invitation"
* extension[type].value[x] only CodeableConcept
* extension[type].valueCodeableConcept from BeVSPopulationScreeningNextInvitationType (required)
* extension[date] ^short = "(partial) date for next invitation"
* extension[date].value[x] only dateTime
*/

// Extension: BePopulationScreeningEpisodeOfCare
// //Parent: workflow-episodeOfCare
// Description: "A periodic episode for a population based screening"
// * ^status = #draft
// * value[x] only Reference(BePopulationBasedScreeningEpisodeOfCare)

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



// Instance: exampleEpisodePopulationScreening
// InstanceOf: BePopulationBasedScreeningEpisodeOfCare
// Usage: #example
// * status = #active
// * identifier.system = "http://example.org/sampleepisodeofcare-identifier"
// * identifier.value = "123"
// * patient = Reference(exampleMaleBePatient)
// * managingOrganization = Reference(CvKO)
// * period.start = "2014-09-01"
// * type = $sct#762444001
// * type.text = "Dikkedarmkanker"
// * extension[nextInvitation].extension[type].valueCodeableConcept = https://www.ehealth.fgov.be/standards/fhir/public-health/CodeSystem/be-cs-populationscreening-next-invitation-type#tobedetermined



Instance: exampleMaleBePatient
InstanceOf: BePatient
Title: "Male Patient"
Description: "Male example patient"
Usage: #example
* identifier[SSIN].system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin"
* identifier[SSIN].value = "12345"
* name.family = "Jack"
* name.given = "Bauer"
* gender = #male

Instance: CvKO
InstanceOf: Organization
Title: "Example Organization"
Description: "Example Organization - Centrum voor Kankeropsporing"
Usage: #example
* name = "Centrum voor Kankeropsporing"
* alias = "CvKO"


// ValueSet: PopulationScreeningScreeningVS
// Id: populationscreening-screening-vs
// Title: "PopulationScreening Screening VS"
// Description: "PopulationScreening screening types"
// * ^status = #draft
// * ^experimental = true
// * $sct#268547008 "Screening for malignant neoplasm of breast (procedure)"
// * $sct#275978004 "Screening for malignant neoplasm of colon" // 268548003 ??
// * $sct#171149006 "Screening for malignant neoplasm of cervix"