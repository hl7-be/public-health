ValueSet: BeVSPopulationScreeningType
Title: "Population Screening Type Value Set"
Description: "Value Set with the codes for the type of screening"
Id: be-vs-populationscreening-type
//* ^status = #draft
* ^experimental = true
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 1
// * include http://snomed.info/sct#275978004
// * include http://snomed.info/sct#268547008 
// * include http://snomed.info/sct#171149006 

// ValueSet: PopulationScreeningScreeningVS
// Id: populationscreening-screening-vs
// Title: "PopulationScreening Screening VS"
// Description: "Population Screening types"
//// * ^status = #draft
// * ^experimental = true
* ^copyright = """
*   This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement
    
*   The SNOMED International IPS Terminology is distributed by International Health Terminology Standards Development Organisation, trading as SNOMED International, and is subject the terms of the [Creative Commons Attribution 4.0 International Public License](https://creativecommons.org/licenses/by/4.0/). For more information, see [SNOMED IPS Terminology](https://www.snomed.org/snomed-ct/Other-SNOMED-products/international-patient-summary-terminology)
    
*   The HL7 International IPS implementation guides incorporate SNOMED CT®, used by permission of the International Health Terminology Standards Development Organisation, trading as SNOMED International. SNOMED CT was originally created by the College of American Pathologists. SNOMED CT is a registered trademark of the International Health Terminology Standards Development Organisation, all rights reserved. Implementers of SNOMED CT should review [usage terms](https://www.snomed.org/get-snomed) or directly contact SNOMED International: info@snomed.org
"""
* $sct#268547008 "Screening for malignant neoplasm of breast (procedure)"
* $sct#275978004 "Screening for malignant neoplasm of colon" // 268548003 ??
* $sct#171149006 "Screening for malignant neoplasm of cervix"
