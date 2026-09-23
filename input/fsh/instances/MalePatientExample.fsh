Instance: MalePatientExample
InstanceOf: BePatient
Title: "Male Patient"
Description: "Male example patient"
Usage: #example
* meta.profile[0] = "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient|2.2.0"
* identifier[SSIN].system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin"
* identifier[SSIN].value = "01234567891"
* name.family = "Jack"
* name.given = "Bauer"
* gender = #male