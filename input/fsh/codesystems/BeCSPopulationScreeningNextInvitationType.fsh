CodeSystem: BeCSPopulationScreeningNextInvitationType
Id: be-cs-populationscreening-next-invitation-type
Title: "Population Screening Next Invitation Type"
Description: "Code System containing the codes for the type of the next invitation (or exclusion of next invitation)"
* ^experimental = false
* ^caseSensitive = true
// * ^property[+].code = #nl-BE
// * ^property[=].uri = "https://www.ehealth.fgov.be/standards/fhir/public-health/CodeSystem/be-cs-display-template"
// * ^property[=].description = "Contains a text with placeholder for the date for display to the user in Dutch"
// * ^property[=].type = #string
// * ^property[+].code = #fr
// * ^property[=].uri = "https://www.ehealth.fgov.be/standards/fhir/public-health/CodeSystem/be-cs-display-template"
// * ^property[=].description = "Contains a text with placeholder for the date for display to the user in French"
// * ^property[=].type = #string
// * ^property[+].code = #en
// * ^property[=].uri = "https://www.ehealth.fgov.be/standards/fhir/public-health/CodeSystem/be-cs-display-template"
// * ^property[=].description = "Contains a text with placeholder for the date for display to the user in English"
// * ^property[=].type = #string



* ^concept[+].code = #nextinvitation
* ^concept[=].display = "A following invitation is expected"
//* ^concept[=].designation[+].language = #en
//* ^concept[=].designation[=].value =  "Next invitation will be around the indicated date"
// * ^concept[=].property[+].code = https://www.ehealth.fgov.be/standards/fhir/public-health/CodeSystem/be-cs-display-template#nl-BE
// * ^concept[=].property[=].valueString = "De volgende uitnodiging is voorzien rond {0}."


* ^concept[+].code = #definitivelyexcluded
* ^concept[=].display = "No further invitation expected"
// * ^concept[=].designation[+].language = #en
// * ^concept[=].designation[=].value =  "Exclusion from invitation"
// * ^concept[=].property[+].code = https://www.ehealth.fgov.be/standards/fhir/public-health/CodeSystem/be-cs-display-template#nl-BE
// * ^concept[=].property[=].valueString = "Je ontvangt geen volgende uitnodiging meer."

* ^concept[+].code = #notintargetgroup
* ^concept[=].display = "Not part of target group."
// * ^concept[=].designation[+].language = #en
// * ^concept[=].designation[=].value =  "Not part of target group. Invitations are from the year of your 50th birthday up to the year of your 69th birthday."
// * ^concept[=].property[+].code = https://www.ehealth.fgov.be/standards/fhir/public-health/CodeSystem/be-cs-display-template#nl-BE
//* ^concept[=].property[=].valueString = "Je ontvangt geen volgende uitnodiging. De leeftijdsgroep voor dit bevolkingsonderzoek start vanaf het jaar waarin je 50 jaar wordt en loopt tot en met het jaar waarin je 69 jaar wordt."

* ^concept[+].code = #refusal
* ^concept[=].display = "No further invitations due to refusal."
// * ^concept[=].designation[+].language = #en
// * ^concept[=].designation[=].value =  "No invitations because of refusal. For more information about this investigation, contact your GP."
// * ^concept[=].property[+].code = https://www.ehealth.fgov.be/standards/fhir/public-health/CodeSystem/be-cs-display-template#nl-BE
// * ^concept[=].property[=].valueString = "Je ontvangt geen volgende uitnodiging omdat je hebt laten weten dat je geen uitnodiging meer wou ontvangen. Indien je meer informatie wenst over dit onderzoek kan je dit best bespreken met je arts."

* ^concept[+].code = #temporarilyexcluded
* ^concept[=].display = "Temporarily excluded."
// * ^concept[=].display = "According to our data, this investigation is either not necessary or not appropriate for you. For more info, contact your GP. Next invitation will be around the indicated date."
// * ^concept[=].designation[+].language = #en
// * ^concept[=].designation[=].value =  "According to our data, this investigation is either not necessary or not appropriate for you. For more info, contact your GP. Next invitation will be around the indicated date."
// * ^concept[=].property[+].code = https://www.ehealth.fgov.be/standards/fhir/public-health/CodeSystem/be-cs-display-template#nl-BE
//* ^concept[=].property[=].valueString = "Volgens onze gegevens is dit onderzoek voor jou op dit moment niet nodig of niet aangewezen. Daarom ontvang je tijdelijk geen uitnodigingen meer. De volgende uitnodiging is voorzien rond {0}. Indien je hierover meer wenst te weten, kan je dit bespreken met je arts."

* ^concept[+].code = #tobedetermined
* ^concept[=].display = "A further invitation may or not be advised, but that is not yet determined."
// * ^concept[=].designation[+].language = #en
// * ^concept[=].designation[=].value =  "The date for a new investigation depends on the current one."
// * ^concept[=].property[+].code = https://www.ehealth.fgov.be/standards/fhir/public-health/CodeSystem/be-cs-display-template#nl-BE
// * ^concept[=].property[=].valueString = "De datum van volgende uitnodiging is afhankelijk van de uitslag van het verdere onderzoek."


* ^concept[+].code = #unknown
* ^concept[=].display = "Insufficient information to determine a future invitation."
// * ^concept[=].designation[+].language = #en
// * ^concept[=].designation[=].value =  "Insufficient information to determine the next invitation date."
// * ^concept[=].property[+].code = https://www.ehealth.fgov.be/standards/fhir/public-health/CodeSystem/be-cs-display-template#nl-BE

// * ^concept[=].property[=].valueString = "We kunnen niet bepalen wanneer u de volgende keer zal uitgenodigd worden."
