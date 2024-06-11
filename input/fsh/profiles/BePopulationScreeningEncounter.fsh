Profile: BePopulationScreeningEncounter
Parent: Encounter
Id: be-populationscreening-encounter
Title: "Population Screening Encounter"
Description: "Encounter Profile for screening - participation in population screening"
//* ^status = #draft
* ^experimental = true
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 1
//* extension contains BePopulationScreeningEpisodeOfCare named Episode 1..1
* identifier MS
* subject 1..1 MS
* subject only Reference(BePatient)
* period MS
* location MS
* appointment MS
* appointment only Reference(BePopulationScreeningAppointment)

Profile: BePopulationScreeningObservation
Parent: BeObservation
Id: be-populationscreening-observation
Title: "Population Screening Observation"
Description: "Observation result of screening"
//* ^status = #draft
* ^experimental = true
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 1
* identifier MS
* code MS
* code from BeVSPopulationScreeningType (preferred)
* valueCodeableConcept MS
* valueCodeableConcept from BePopulationScreeningResultVS (preferred)
* encounter MS
* encounter only Reference(BePopulationScreeningEncounter)
//* extension contains BePopulationScreeningEpisodeOfCare named Episode 1..1 MS

Instance: BreastCancerEncounterExample
InstanceOf: BePopulationScreeningEncounter
Usage: #example
Title: "Breast Cancer Encounter Example"
Description: "Participation for breastcancer screening"
* status = #finished
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #AMB
//* episodeOfCare = Reference(exampleEpisodePopulationScreening)
* appointment = Reference(BreastCancerScreeningAppointment)
* period.start = "2022-03-15T11:30:00.000+02:00"
* location.location = Reference(mammographicUnit)
* subject = Reference(JaneDoe)
* contained[0] = mammographicUnit
// * extension.url = "https://www.ehealth.fgov.be/standards/fhir/public-health/StructureDefinition/BePopulationScreeningEpisodeOfCare"
// * extension.valueReference = Reference(exampleEpisodePopulationScreening)


Instance: PositiveBreastCancerResult
InstanceOf: BePopulationScreeningObservation
Usage: #example
Title: "Positive Breast Cancer Result"
Description: "Observation with positive/abnormal result"
* status = #final
* code = $sct#280415008
* performer = Reference(Organization/CvKO)
* encounter = Reference(BreastCancerEncounterExample)
// * extension.url = "https://www.ehealth.fgov.be/standards/fhir/public-health/StructureDefinition/BePopulationScreeningEpisodeOfCare"
// * extension.valueReference = Reference(exampleEpisodePopulationScreening)




ValueSet: BePopulationScreeningResultVS
Id: be-populationscreening-result-vs
Title: "PopulationScreening Result Value Set"
Description: "Result"
* ^experimental = true
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 1
* ^copyright = """
    
*      This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement
    
*   The SNOMED International IPS Terminology is distributed by International Health Terminology Standards Development Organisation, trading as SNOMED International, and is subject the terms of the [Creative Commons Attribution 4.0 International Public License](https://creativecommons.org/licenses/by/4.0/). For more information, see [SNOMED IPS Terminology](https://www.snomed.org/snomed-ct/Other-SNOMED-products/international-patient-summary-terminology)
    
*   The HL7 International IPS implementation guides incorporate SNOMED CT®, used by permission of the International Health Terminology Standards Development Organisation, trading as SNOMED International. SNOMED CT was originally created by the College of American Pathologists. SNOMED CT is a registered trademark of the International Health Terminology Standards Development Organisation, all rights reserved. Implementers of SNOMED CT should review [usage terms](https://www.snomed.org/get-snomed) or directly contact SNOMED International: info@snomed.org"""

* $sct#280415008 "Abnormal result"
* $sct#280413001 "Normal result"