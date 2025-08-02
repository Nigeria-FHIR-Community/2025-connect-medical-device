
Profile: NgDevice
Parent: Device
Id: ng-device
Title: "NG Device"
Description: "A profile for medical devices such as chemistry analyzers used in diagnostics."

* identifier 1..1 MS
* status 1..1 MS
* type 1..1 MS
* manufacturer 0..1 MS
* manufactureDate 0..1
* expirationDate 0..1
* lotNumber 0..1
* modelNumber 0..1 MS
* serialNumber 0..1 MS
* deviceName.name 1..1
* deviceName.type 1..1
* udiCarrier.deviceIdentifier 0..1
* owner 0..1
* location 0..1
* note 0..*


Instance: chemistry-analyzer-device
InstanceOf: NgDevice
Title: "Example: Chemistry Analyzer Device"
Description: "Example of a medical device - Chemistry Analyzer used in laboratory diagnostics."
Usage: #example

* identifier.system = "https://son.gov.ng/device-id"
* identifier.value = "CHEM-ANLZR-0001"
* status = #active
* type.coding[0].system = "http://snomed.info/sct"
* type.coding[0].code = #408467006
* type.coding[0].display = "Clinical chemistry analyzer"
* manufacturer = "Roche Diagnostics"
* manufactureDate = "2023-06-15"
* expirationDate = "2028-06-15"
* lotNumber = "LCHM2023A"
* modelNumber = "Cobas C311"
* serialNumber = "RC-2023-00987"
* deviceName[0].name = "Roche Cobas Chemistry Analyzer"
* deviceName[0].type = #user-friendly-name
* udiCarrier.deviceIdentifier = "12345678901234"
* note.text = "Calibrated on 2025-01-10. Scheduled for maintenance every 6 months."
