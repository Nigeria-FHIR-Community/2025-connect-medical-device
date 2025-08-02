Profile: NgMedicationRequest
Parent: MedicationRequest
Id: ng-medication-request
Title: "NG MedicationRequest"
Description: "A profile for electronic prescriptions issued by Nigerian healthcare providers."

* status 1..1 MS
* intent 1..1 MS
* medication[x] 1..1 MS
* subject 1..1 MS
* encounter 0..1
* authoredOn 1..1 MS
* requester 1..1 MS
* dosageInstruction 0..* MS
* dispenseRequest 0..1 MS
* reasonCode 0..*
* note 0..*
* priority 0..1
* recorder 0..1
* extension 0..*
* identifier 0..*
* groupIdentifier 0..1
* supportingInformation 0..*

Instance: medicationrequest-004
InstanceOf: NgMedicationRequest
Title: "Example: MedicationRequest"
Description: "An example of an electronic prescription for Amoxicillin."
Usage: #example

* status = #active
* intent = #order
* medicationCodeableConcept.coding[0].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* medicationCodeableConcept.coding[0].code = #723
* medicationCodeableConcept.coding[0].display = "Amoxicillin 250mg Capsule"
* subject.reference = "NgPatient/patient-001"
* encounter.reference = "NgEncounter/encounter-001"
* authoredOn = "2025-08-05"
* requester.reference = "NgPractitioner/practitioner-001"
* recorder.reference = "NgPractitioner/practitioner-001"
* dosageInstruction[0].text = "Take one capsule three times a day for 7 days"
* dosageInstruction[0].timing.repeat.frequency = 3
* dosageInstruction[0].timing.repeat.period = 1
* dosageInstruction[0].timing.repeat.periodUnit = #d
* dosageInstruction[0].doseAndRate.doseQuantity.value = 1
* dosageInstruction[0].doseAndRate.doseQuantity.unit = "capsule"
* dispenseRequest.validityPeriod.start = "2025-08-05"
* dispenseRequest.validityPeriod.end = "2025-08-12"
* dispenseRequest.quantity.value = 21
* dispenseRequest.quantity.unit = "capsule"