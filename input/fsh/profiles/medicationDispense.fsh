Profile: NgMedicationDispense
Parent: MedicationDispense
Id: ng-medication-dispense
Title: "NG MedicationDispense"
Description: "A profile for recording dispensation of prescribed medications by a pharmacy in Nigeria."

* status 1..1 MS
* medication[x] 1..1 MS
* subject 1..1 MS
* context 0..1
* performer 0..*
* quantity 0..1 MS
* whenHandedOver 0..1
* dosageInstruction 0..* MS

Instance: dispense-004
InstanceOf: NgMedicationDispense
Title: "Example: Medication Dispense"
Description: "An example of a pharmacist dispensing Amoxicillin 250mg."
Usage: #example

* status = #completed
* medicationCodeableConcept.coding[0].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* medicationCodeableConcept.coding[0].code = #723
* medicationCodeableConcept.coding[0].display = "Amoxicillin 250mg Capsule"
* subject.reference = "Patient/patient-001"
* context.reference = "Encounter/example-encounter"
* performer[0].actor.reference = "Practitioner/pharmacist-001"
* quantity.value = 21
* quantity.unit = "capsule"
* whenHandedOver = "2025-08-05T10:30:00+01:00"
* dosageInstruction[0].text = "Take one capsule three times daily for 7 days"
* dosageInstruction[0].timing.repeat.frequency = 3
* dosageInstruction[0].timing.repeat.period = 1
* dosageInstruction[0].timing.repeat.periodUnit = #d
* dosageInstruction[0].doseAndRate.doseQuantity.value = 1
* dosageInstruction[0].doseAndRate.doseQuantity.unit = "capsule"