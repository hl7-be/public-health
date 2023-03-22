ValueSet: BeVSPopulationScreeningType
Title: "BeVSPopulationScreeningType"
Description: "Describes the type of screening"
Id: be-vs-populationscreening-type
* ^status = #draft
* ^experimental = true
// * include http://snomed.info/sct#275978004
// * include http://snomed.info/sct#268547008 
// * include http://snomed.info/sct#171149006 

// ValueSet: PopulationScreeningScreeningVS
// Id: populationscreening-screening-vs
// Title: "PopulationScreening Screening VS"
// Description: "Population Screening types"
// * ^status = #draft
// * ^experimental = true
* $sct#268547008 "Screening for malignant neoplasm of breast (procedure)"
* $sct#275978004 "Screening for malignant neoplasm of colon" // 268548003 ??
* $sct#171149006 "Screening for malignant neoplasm of cervix"
