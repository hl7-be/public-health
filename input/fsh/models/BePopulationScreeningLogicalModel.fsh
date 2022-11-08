Logical: BePopulationScreening
Parent: Element
Title: "Logical model for population based screening"
Description: "Logical model for recurrent population based screening. The model represents one iteration of a screening, called episode. A patient can have multiple episodes for a given screening. A screening of a specific type for a given patient can be repeated after a certain period. Each time the screening is repeated results in a new episode."

* ^status = #draft
* patient 1..1 Reference(Patient) "The patient for the screening."
* screeningType 1..1 CodeableConcept "The related screening" "The related screening, for example breast cancer, colon cancer or cervicalcancer."
* screeningYear 1..1 string "The calendar year of the screening." """The year of the screening process/episode for the given screening. If the patient participated, the participation year is taken. If the patient didn't participate, the calendar year of the invitation is taken. 
If there is no invitation or participation, there will be no episode.
For example, if patient is allowed a population based screening every 2 years for a given screening type and the first screening episode invitation took place in 2022, the next episode will be created for the next invitation in 2024. 
If the patient has a refusal or exclusion registered and does not have a participation/invitation, so the patient does not have any episodes, the calendar year of the registration of the refusal/exclusion is taken."""
* invitation 0..1 BackboneElement "The appointment details of the invitation." "An invitation is not mandatory, in some cases a patient can participate for a screening without an invitation."
  * date 1..1 date "The date the patient is invited to participate in the population based screening."
  * time 0..1 time "The time for the screening if there is a proposed appointment. This is the case for breast cancer screening."
  * locationName 0..1 string "Human readable name of the location where the patient is invited to participate." "For some screenings, but not all, a location is provided for the patient."
  * locationAddress 0..1 string "Human readable address of the invitation location." "For some screenings, but not all, a location is provided for the patient."
* participation 0..1 BackboneElement "The participation details." "A participation is not mandatory. A patient can choose not to participate for a screening."
  * date 1..1 date "The date the patient participated in the population based screening."
  * locationName 0..1 string "Human readable name of the location where the patient participated." "For some screenings, but not all, a location is provided for the patient."
  * locationAddress 0..1 string "Human readable address of the participation location." "For some screenings, but not all, a location is provided for the patient."
  * result 0..1 CodeableConcept "The result of participation in the population based screening" "Notify the patient if the result was abnormal/positive or normal/negative"
  * followup 0..1 BackboneElement "Details of proposed actions for the patient after the screening concluded." "This data acts purely as info for the patient to inform the patient of proposed actions and should not be followed up by the screening authority."
    * needed 0..1 boolean "Indication if the patient should request or take other examinations/steps based on the outcome of the screening."
    * advice 0..1 string "Indication what other examinations/steps the patient should take."
* nextInvitationIndication 1..1 string "This field gives a short human readable indication for the patient if the patient can excpect future invitations for the population based screening and an estimation when the next invitation will be created. If the patient will not receive future invitations for the screening, a short explanation will be given."