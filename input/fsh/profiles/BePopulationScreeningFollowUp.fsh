Profile: BePopulationScreeningFollowUp
Parent: ServiceRequest
Id: be-populationscreening-follow-up
Title: "PopulationScreening Follow Up"
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

ValueSet: BeVSPopulationScreeningFollowUpAdvice
Title: "Population Screening Follow-up Advice Value Set"
Description: "Possible follow up actions"
//* ^status = #draft
* ^copyright = """
*   This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement
    
*   The SNOMED International IPS Terminology is distributed by International Health Terminology Standards Development Organisation, trading as SNOMED International, and is subject the terms of the [Creative Commons Attribution 4.0 International Public License](https://creativecommons.org/licenses/by/4.0/). For more information, see [SNOMED IPS Terminology](https://www.snomed.org/snomed-ct/Other-SNOMED-products/international-patient-summary-terminology)
    
*   The HL7 International IPS implementation guides incorporate SNOMED CT®, used by permission of the International Health Terminology Standards Development Organisation, trading as SNOMED International. SNOMED CT was originally created by the College of American Pathologists. SNOMED CT is a registered trademark of the International Health Terminology Standards Development Organisation, all rights reserved. Implementers of SNOMED CT should review [usage terms](https://www.snomed.org/get-snomed) or directly contact SNOMED International: info@snomed.org
"""
* ^experimental = true
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 1
* http://snomed.info/sct#73761001 "Colonoscopy"

ValueSet: BeVSPopulationScreeningBodySiteLocation
Id: be-vspopulationscreening-body-site-location
Title: "PopulationScreening Body Site Value Set"
Description: "Body site or location on body"
//* ^status = #draft
* ^copyright = """
*   This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement
    
*   The SNOMED International IPS Terminology is distributed by International Health Terminology Standards Development Organisation, trading as SNOMED International, and is subject the terms of the [Creative Commons Attribution 4.0 International Public License](https://creativecommons.org/licenses/by/4.0/). For more information, see [SNOMED IPS Terminology](https://www.snomed.org/snomed-ct/Other-SNOMED-products/international-patient-summary-terminology)
    
*   The HL7 International IPS implementation guides incorporate SNOMED CT®, used by permission of the International Health Terminology Standards Development Organisation, trading as SNOMED International. SNOMED CT was originally created by the College of American Pathologists. SNOMED CT is a registered trademark of the International Health Terminology Standards Development Organisation, all rights reserved. Implementers of SNOMED CT should review [usage terms](https://www.snomed.org/get-snomed) or directly contact SNOMED International: info@snomed.org
"""
* ^experimental = true
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 1
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
* bodySite = http://snomed.info/sct#14742008
* bodySite.text = "Dikke darm"
// * extension.url = "https://www.ehealth.fgov.be/standards/fhir/public-health/StructureDefinition/BePopulationScreeningEpisodeOfCare"
// * extension.valueReference = Reference(exampleEpisodePopulationScreening)

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

Instance: JaneDoe
InstanceOf: BePatient
Description: "female example patient"
* name.family = "Doe"
* name.given = "Jane"
* gender = #female