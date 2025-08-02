Profile: NgObservationLabResult
Parent: Observation
Id: ng-observation-labresult
Title: "NG Observation - Laboratory Result"
Description: "A profile for representing laboratory result observations."

* status 1..1 MS
* category 1..1 MS
* category.coding.system 1..1
* category.coding.code 1..1
* code 1..1 MS
* code.coding.system 1..1
* code.coding.code 1..1
* subject 1..1 MS
* effectiveDateTime 1..1
* valueQuantity 1..1
* valueQuantity.value 1..1
* valueQuantity.unit 1..1
* performer 0..*
* interpretation 0..1
* interpretation.coding.system 0..1
* interpretation.coding.code 0..1

Instance: lab-observation-004
InstanceOf: NgObservationLabResult
Title: "Example: Lab Result Observation"
Description: "An example of a laboratory result observation for hemoglobin."
Usage: #example

* status = #final
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #laboratory
* code.coding.system = "http://loinc.org"
* code.coding.code = #718-7  // Hemoglobin [Mass/volume] in Blood
* subject.reference = "Patient/patient-001"
* effectiveDateTime = "2025-07-30T09:00:00+01:00"
* valueQuantity.value = 13.5
* valueQuantity.unit = "g/dL"
* performer[0].reference = "Practitioner/practitioner-001"
* interpretation.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation"
* interpretation.coding.code = #N  // Normal