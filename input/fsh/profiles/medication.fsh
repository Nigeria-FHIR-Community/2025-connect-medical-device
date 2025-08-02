Profile: NgMedication
Parent: Medication
Id: ng-medication
Title: "NG Medication"
Description: "A profile for medications prescribed and dispensed in Nigeria."

* code 1..1 MS
* status 0..1 MS
* form 0..1 MS
* ingredient 0..* MS
* batch 0..1
* manufacturer 0..1

Instance: medication-004
InstanceOf: NgMedication
Title: "Example: Amoxicillin 250mg Capsule"
Description: "An example medication definition for Amoxicillin."
Usage: #example

* code.coding[0].system = "http://www.nafdac.gov.ng/research/umls/rxnorm"
* code.coding[0].code = #723
* code.coding[0].display = "Amoxicillin 250mg Capsule"
* status = #active
* form.coding[0].system = "http://terminology.hl7.org/CodeSystem/medication-form"
* form.coding[0].code = #cap
* form.coding[0].display = "Capsule"
* ingredient[0].itemCodeableConcept.coding[0].code = #372687004
* ingredient[0].itemCodeableConcept.coding[0].system = "http://snomed.info/sct"
* ingredient[0].itemCodeableConcept.coding[0].display = "Amoxicillin (substance)"
* ingredient[0].strength.numerator.value = 250
* ingredient[0].strength.numerator.unit = "mg"
* ingredient[0].strength.denominator.value = 1
* ingredient[0].strength.denominator.unit = "capsule"