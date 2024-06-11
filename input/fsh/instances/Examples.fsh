// Instance: BK-1-no-screening-example-episode
// InstanceOf: BePopulationBasedScreeningEpisodeOfCare
// Usage: #example
// * extension.url = "https://www.ehealth.fgov.be/standards/fhir/public-health/StructureDefinition/PopulationScreeningNextInvitationIndication"
// * extension.valueString = "Je ontvangt geen volgende uitnodiging omdat je hebt laten weten dat je geen uitnodiging meer wou ontvangen. Indien je meer informatie wenst over dit onderzoek kan je dit best bespreken met je arts. "
// * extension[nextInvitation].extension[type].valueCodeableConcept = https://www.ehealth.fgov.be/standards/fhir/public-health/CodeSystem/be-cs-populationscreening-next-invitation-type#refusal
// * identifier.system = "http://example.org/sampleepisodeofcare-identifier"
// * identifier.value = "3237640"
// * status = #active
// * type = http://snomed.info/sct#268547008 "PopulationScreening borstkanker"
// * type.text = "PopulationScreening borstkanker"
// * patient = Reference(Patient/JaneDoe)
// * managingOrganization = Reference(Organization/CvKO)
// * period.start = "2020-04-08T00:00:00+02:00"



// Instance: BK-2-invitation-example-episode
// InstanceOf: BePopulationBasedScreeningEpisodeOfCare
// Usage: #example
// //* extension.url = "https://www.ehealth.fgov.be/standards/fhir/public-health/StructureDefinition/PopulationScreeningNextInvitationIndication"
// //* extension.valueString = "De datum van volgende uitnodiging is afhankelijk van de uitslag van het verdere onderzoek. "
// * extension[nextInvitation].extension[type].valueCodeableConcept = https://www.ehealth.fgov.be/standards/fhir/public-health/CodeSystem/be-cs-populationscreening-next-invitation-type#tobedetermined
// * identifier.system = "http://example.org/sampleepisodeofcare-identifier"
// * identifier.value = "3237641"
// * status = #active
// * type = http://snomed.info/sct#268547008 "PopulationScreening borstkanker"
// * type.text = "PopulationScreening borstkanker"
// * patient = Reference(Patient/JaneDoe)
// * managingOrganization = Reference(Organization/CvKO)
// * period.start = "2020-04-08T00:00:00+02:00"

Instance: BK-2-invitation-example-invitation
InstanceOf: BePopulationScreeningAppointment
Title: "[Example 2] Invitation - Breast Cancer"
Description: "Example Invitation (instance of Appointment) for Breast Cancer screening"
Usage: #example
* contained.resourceType = "Location"
* contained.id = "1"
* contained.name = "AZ Jan Palfijn Gent"
* contained.address.text = "HENRI DUNANTLAAN 5, 9000 GENT"
* contained.address.line = "HENRI DUNANTLAAN 5, 9000 GENT"
// * extension.url = "https://www.ehealth.fgov.be/standards/fhir/public-health/StructureDefinition/BePopulationScreeningEpisodeOfCare"
// * extension.valueReference = Reference(BK-2-invitation-example-episode)
* status = #booked
* start = "2021-04-08T00:00:00.000+02:00"
* end = "2021-04-08T23:59:00.000+02:00"
* participant[patient].actor = Reference(JaneDoe)
* participant[patient].status = #tentative
* participant[location].actor = Reference(Location/1)
* participant[location].status = #accepted
* participant[patient].actor.type = #Patient
* participant[location].actor.type = #Location


// Instance: BK-3-invitation-participation-negative-example-episode
// InstanceOf: BePopulationBasedScreeningEpisodeOfCare
// Usage: #example
// //* extension.url = "https://www.ehealth.fgov.be/standards/fhir/public-health/StructureDefinition/PopulationScreeningNextInvitationIndication"
// //* extension.valueString = "De volgende uitnodiging is voorzien rond 24/12/2024."
// * extension[nextInvitation].extension[type].valueCodeableConcept = https://www.ehealth.fgov.be/standards/fhir/public-health/CodeSystem/be-cs-populationscreening-next-invitation-type#nextinvitation
// * extension[nextInvitation].extension[date].valueDateTime = "2024-12-24"
// * identifier.system = "http://example.org/sampleepisodeofcare-identifier"
// * identifier.value = "3237642"
// * status = #active
// * type = http://snomed.info/sct#268547008 "PopulationScreening borstkanker"
// * type.text = "PopulationScreening borstkanker"
// * patient = Reference(Patient/JaneDoe)
// * managingOrganization = Reference(Organization/CvKO)
// * period.start = "2020-04-08T00:00:00+02:00"

Instance: BK-3-invitation-participation-negative-example-appointment
InstanceOf: BePopulationScreeningAppointment
Title: "[Example 3] Invitation - Breast Cancer"
Description: "Example Invitation for Breast Cancer screening"

Usage: #example
//* language = #nl-BE
* contained.resourceType = "Location"
* contained.id = "1"
* contained.name = "AZ Jan Palfijn Gent"
* contained.address.text = "HENRI DUNANTLAAN 5, 9000 GENT"
* contained.address.line = "HENRI DUNANTLAAN 5, 9000 GENT"
// * extension.url = "https://www.ehealth.fgov.be/standards/fhir/public-health/StructureDefinition/BePopulationScreeningEpisodeOfCare"
// * extension.valueReference = Reference(BK-3-invitation-participation-negative-example-episode)
* status = #booked
* start = "2021-04-08T00:00:00.000+02:00"
* end = "2021-04-08T23:59:00.000+02:00"
* participant[patient].actor = Reference(Patient/JaneDoe)
* participant[patient].actor.type = #Patient
* participant[patient].status = #tentative
* participant[location].actor = Reference(Location/1)
* participant[location].status = #accepted
* participant[location].actor.type = #Location

Instance: BK-3-invitation-participation-negative-example-encounter
InstanceOf: BePopulationScreeningEncounter
Title: "[Example 3] Encounter - Breast Cancer"
Description: "Example Encounter for Breast Cancer screening"
Usage: #example
* contained.resourceType = "Location"
* contained.id = "1"
* contained.name = "AZ Jan Palfijn Gent"
* contained.address.text = "HENRI DUNANTLAAN 5, 9000 GENT"
* contained.address.line = "HENRI DUNANTLAAN 5, 9000 GENT"
// * extension.url = "https://www.ehealth.fgov.be/standards/fhir/public-health/StructureDefinition/BePopulationScreeningEpisodeOfCare"
// * extension.valueReference = Reference(BK-3-invitation-participation-negative-example-episode)
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB
* subject = Reference(Patient/JaneDoe)
//* episodeOfCare = Reference(BK-3-invitation-participation-negative-example-episode)
* period.start = "2021-07-17T00:00:00+02:00"
* period.end = "2021-07-17T23:59:00+02:00"
* location.location = Reference(Location/1)

Instance: BK-3-invitation-participation-negative-example-observation
InstanceOf: BePopulationScreeningObservation
Title: "[Example 3] Result - Breast Cancer - normal"
Description: "Example Result for Breast Cancer screening - normal result i.e. screening negative"
Usage: #example
* language = #nl-BE
// * extension.url = "https://www.ehealth.fgov.be/standards/fhir/public-health/StructureDefinition/BePopulationScreeningEpisodeOfCare"
// * extension.valueReference = Reference(BK-3-invitation-participation-negative-example-episode)
* status = #final
* performer = Reference(Organization/CvKO)
* valueCodeableConcept = http://snomed.info/sct#280413001 "Niet afwijkend"
* code = http://snomed.info/sct#268547008
* subject = Reference(Patient/JaneDoe)
* encounter = Reference(BK-3-invitation-participation-negative-example-encounter)



// Instance: BK-4-participation-negative-example-episode
// InstanceOf: BePopulationBasedScreeningEpisodeOfCare
// Usage: #example
// //* extension.url = "https://www.ehealth.fgov.be/standards/fhir/public-health/StructureDefinition/PopulationScreeningNextInvitationIndication"
// //* extension.valueString = "De volgende uitnodiging is voorzien rond 24/12/2024."
// * extension[nextInvitation].extension[type].valueCodeableConcept = https://www.ehealth.fgov.be/standards/fhir/public-health/CodeSystem/be-cs-populationscreening-next-invitation-type#nextinvitation
// * extension[nextInvitation].extension[date].valueDateTime = "2024-12-24"
// * identifier.system = "http://example.org/sampleepisodeofcare-identifier"
// * identifier.value = "3237643"
// * status = #active
// * type = http://snomed.info/sct#268547008 "PopulationScreening borstkanker"
// * type.text = "PopulationScreening borstkanker"
// * patient = Reference(Patient/JaneDoe)
// * managingOrganization = Reference(Organization/CvKO)
// * period.start = "2020-04-08T00:00:00+02:00"

Instance: BK-4-participation-negative-example-encounter
InstanceOf: BePopulationScreeningEncounter
Title: "[Example 4] Encounter - Breast Cancer - normal"
Description: "Example Encounter for Breast Cancer screening"
Usage: #example
//* language = #nl-BE
* contained.resourceType = "Location"
* contained.id = "1"
* contained.name = "AZ Jan Palfijn Gent"
* contained.address.text = "HENRI DUNANTLAAN 5, 9000 GENT"
* contained.address.line = "HENRI DUNANTLAAN 5, 9000 GENT"
// * extension.url = "https://www.ehealth.fgov.be/standards/fhir/public-health/StructureDefinition/BePopulationScreeningEpisodeOfCare"
// * extension.valueReference = Reference(BK-4-participation-negative-example-episode)
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB
* subject = Reference(Patient/JaneDoe)
//* episodeOfCare = Reference(BK-4-participation-negative-example-episode)
* period.start = "2021-07-17T00:00:00+02:00"
* period.end = "2021-07-17T23:59:00+02:00"
* location.location = Reference(Location/1)

Instance: BK-4-participation-negative-example-observation
InstanceOf: BePopulationScreeningObservation
Title: "[Example 4] Result - Breast Cancer - normal"
Description: "Example Result for Breast Cancer screening - normal result"
Usage: #example
//* language = #nl-BE
* status = #final
* performer = Reference(Organization/CvKO)
// * extension.url = "https://www.ehealth.fgov.be/standards/fhir/public-health/StructureDefinition/BePopulationScreeningEpisodeOfCare"
// * extension.valueReference = Reference(BK-4-participation-negative-example-episode)
* valueCodeableConcept = http://snomed.info/sct#280413001 "Niet afwijkend"
* code = http://snomed.info/sct#268547008
* subject = Reference(Patient/JaneDoe)
* encounter = Reference(BK-4-participation-negative-example-encounter)



// Instance: BK-5-negative-example-episode
// InstanceOf: BePopulationBasedScreeningEpisodeOfCare
// Usage: #example
// //* extension.url = "https://www.ehealth.fgov.be/standards/fhir/public-health/StructureDefinition/PopulationScreeningNextInvitationIndication"
// //* extension.valueString = "De volgende uitnodiging is voorzien rond 24/12/2024."
// * extension[nextInvitation].extension[type].valueCodeableConcept = https://www.ehealth.fgov.be/standards/fhir/public-health/CodeSystem/be-cs-populationscreening-next-invitation-type#nextinvitation
// * extension[nextInvitation].extension[date].valueDateTime = "2024-12-24"
// * identifier.system = "http://example.org/sampleepisodeofcare-identifier"
// * identifier.value = "3237644"
// * status = #active
// * type = http://snomed.info/sct#268547008 "PopulationScreening borstkanker"
// * type.text = "PopulationScreening borstkanker"
// * patient = Reference(Patient/JaneDoe)
// * managingOrganization = Reference(Organization/CvKO)
// * period.start = "2020-04-08T00:00:00+02:00"

Instance: BK-5-example-invitation
InstanceOf: BePopulationScreeningAppointment
Title: "[Example 5] Invitation - Breast Cancer"
Description: "Example Invitation for Breast Cancer screening"
Usage: #example
//* language = #nl-BE
* contained.resourceType = "Location"
* contained.id = "1"
* contained.name = "AZ Jan Palfijn Gent"
* contained.address.text = "HENRI DUNANTLAAN 5, 9000 GENT"
* contained.address.line = "HENRI DUNANTLAAN 5, 9000 GENT"
// * extension.url = "https://www.ehealth.fgov.be/standards/fhir/public-health/StructureDefinition/BePopulationScreeningEpisodeOfCare"
// * extension.valueReference = Reference(BK-5-negative-example-episode)
* status = #booked
* start = "2021-04-08T00:00:00.000+02:00"
* end = "2021-04-08T23:59:00.000+02:00"
* participant[patient].actor = Reference(Patient/JaneDoe)
* participant[patient].status = #tentative
* participant[location].actor = Reference(Location/1)
* participant[location].status = #accepted
* participant[patient].actor.type = #Patient
* participant[location].actor.type = #Location

Instance: BK-5-example-participation
InstanceOf: BePopulationScreeningEncounter
Title: "[Example 5] Encounter - Breast Cancer"
Description: "Example Encounter for Breast Cancer screening"
Usage: #example
* contained.resourceType = "Location"
* contained.id = "1"
* contained.name = "AZ Jan Palfijn Gent"
* contained.address.text = "HENRI DUNANTLAAN 5, 9000 GENT"
* contained.address.line = "HENRI DUNANTLAAN 5, 9000 GENT"
// * extension.url = "https://www.ehealth.fgov.be/standards/fhir/public-health/StructureDefinition/BePopulationScreeningEpisodeOfCare"
// * extension.valueReference = Reference(BK-5-negative-example-episode)
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB
* subject = Reference(Patient/JaneDoe)
//* episodeOfCare = Reference(BK-5-negative-example-episode)
* period.start = "2021-07-17T00:00:00+02:00"
* period.end = "2021-07-17T23:59:00+02:00"
* location.location = Reference(Location/1)

Instance: BK-5-result
InstanceOf: BePopulationScreeningObservation
Title: "[Example 5] Result - Breast Cancer"
Description: "Example Result for Breast Cancer screening"
Usage: #example
//* language = #nl-BE
* status = #final
* performer = Reference(Organization/CvKO)
// * extension.url = "https://www.ehealth.fgov.be/standards/fhir/public-health/StructureDefinition/BePopulationScreeningEpisodeOfCare"
// * extension.valueReference = Reference(BK-5-negative-example-episode)
* valueCodeableConcept = http://snomed.info/sct#280415008 "Abnormal result"
* code = http://snomed.info/sct#268547008
* subject = Reference(Patient/JaneDoe)
* encounter = Reference(BK-5-example-participation)

//Instance: BK-5-example-advice-1
//InstanceOf: BePopulationScreeningFollowUp
//Title: "[Example 5] follow-up - Breast Cancer"
//Description: "Example follow-up from Breast Cancer screening"
//Usage: #example
//* language = #nl-BE
// // * extension.url = "https://www.ehealth.fgov.be/standards/fhir/public-health/StructureDefinition/BePopulationScreeningEpisodeOfCare"
// // * extension.valueReference = Reference(BK-5-negative-example-episode)
//* status = #active
//* intent = #proposal
//* subject = Reference(Patient/JaneDoe)



// Instance: BK-6-example-episode
// InstanceOf: BePopulationBasedScreeningEpisodeOfCare
// Usage: #example
// //* extension.url = "https://www.ehealth.fgov.be/standards/fhir/public-health/StructureDefinition/PopulationScreeningNextInvitationIndication"
// //* extension.valueString = "De volgende uitnodiging is voorzien rond 24/12/2024."
// * extension[nextInvitation].extension[type].valueCodeableConcept = https://www.ehealth.fgov.be/standards/fhir/public-health/CodeSystem/be-cs-populationscreening-next-invitation-type#nextinvitation
// * extension[nextInvitation].extension[date].valueDateTime = "2024-12-24"
// * identifier.system = "http://example.org/sampleepisodeofcare-identifier"
// * identifier.value = "3237645"
// * status = #active
// * type = http://snomed.info/sct#268547008 "PopulationScreening borstkanker"
// * type.text = "PopulationScreening borstkanker"
// * patient = Reference(Patient/JaneDoe)
// * managingOrganization = Reference(Organization/CvKO)
// * period.start = "2020-04-08T00:00:00+02:00"

Instance: BK-6-example-participation
InstanceOf: BePopulationScreeningEncounter
Title: "[Example 6] Encounter - Breast Cancer"
Description: "Example Encounter for Breast Cancer screening"
Usage: #example
* language = #nl-BE
* contained.resourceType = "Location"
* contained.id = "1"
* contained.name = "AZ Jan Palfijn Gent"
* contained.address.text = "HENRI DUNANTLAAN 5, 9000 GENT"
* contained.address.line = "HENRI DUNANTLAAN 5, 9000 GENT"
// * extension.url = "https://www.ehealth.fgov.be/standards/fhir/public-health/StructureDefinition/BePopulationScreeningEpisodeOfCare"
// * extension.valueReference = Reference(BK-6-example-episode)
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB
* subject = Reference(Patient/JaneDoe)
//* episodeOfCare = Reference(BK-6-example-episode)
* period.start = "2021-07-17T00:00:00+02:00"
* period.end = "2021-07-17T23:59:00+02:00"
* location.location = Reference(Location/1)

Instance: BK-6-example-result
InstanceOf: BePopulationScreeningObservation
Title: "[Example 6] Result - Breast Cancer"
Description: "Example Result for Breast Cancer screening"
Usage: #example
* status = #final
* performer = Reference(Organization/CvKO)
// * extension.url = "https://www.ehealth.fgov.be/standards/fhir/public-health/StructureDefinition/BePopulationScreeningEpisodeOfCare"
// * extension.valueReference = Reference(BK-6-example-episode)
* valueCodeableConcept = http://snomed.info/sct#280415008 "Abnormal result"
* code = http://snomed.info/sct#268547008
* subject = Reference(Patient/JaneDoe)
* encounter = Reference(BK-6-example-participation)

//Instance: BK-6-example-advice
//InstanceOf: BePopulationScreeningFollowUp
//Title: "[Example 6] Follow-up - Breast Cancer"
//Description: "Example Follow-up for Breast Cancer screening"
//Usage: #example
// // * extension.url = "https://www.ehealth.fgov.be/standards/fhir/public-health/StructureDefinition/BePopulationScreeningEpisodeOfCare"
// // * extension.valueReference = Reference(BK-6-example-episode)
//* status = #active
//* intent = #proposal
//* subject = Reference(Patient/JaneDoe)
