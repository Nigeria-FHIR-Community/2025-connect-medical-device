Profile: NgDeviceDefinition
Parent: DeviceDefinition
Id: ng-device-definition
Title: "NG DeviceDefinition"
Description: "Profile for defining medical devices such as analyzers, monitors, and diagnostic tools used in Nigerian health facilities."

* identifier 0..* MS
* type 1..1 MS
* manufacturerString 0..1
* deviceName 1..* MS
* deviceName.name 1..1
* deviceName.type 1..1
* modelNumber 0..1
* version 0..*
* capability 0..*
* capability.type 1..1
* capability.description 0..1
* property 0..*
* property.type 1..1
* property.valueQuantity 0..*
* specialization 0..*
* specialization.systemType 1..1
* specialization.version 0..1

Instance: chemistry-analyzer-definition
InstanceOf: NgDeviceDefinition
Title: "Example: Chemistry Analyzer Definition"
Description: "Example DeviceDefinition for a standard clinical chemistry analyzer used in diagnostics."
Usage: #example

* identifier[0].system = "http://example.org/devices"
* identifier[0].value = "CHEM-ANLZ-2025"
* type.text = "Clinical Chemistry Analyzer"
* manufacturerString = "Abbott Laboratories"
* deviceName[0].name = "ARCHITECT c4000"
* deviceName[0].type = #model-name
* modelNumber = "c4000"
* version[0] = "3.1.0"
* capability[0].type.text = "Can run assays for electrolytes, enzymes, and metabolites"
* capability[0].description = #BiochemicalAnalysis
* property[0].type.text = "Sample throughput"
* property[0].valueQuantity[0].value = 800
* property[0].valueQuantity[0].unit = "tests/hour"
* specialization[0].systemType = "IVD"
* specialization[0].version = "ISO 15189"