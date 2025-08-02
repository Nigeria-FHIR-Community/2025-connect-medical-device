Profile: NgDeviceMetric
Parent: DeviceMetric
Id: ng-device-metric
Title: "NG DeviceMetric"
Description: "A profile representing a measurement channel or metric produced by a medical device."

* type 1..1 MS
* type ^short = "Describes the type of measurement (e.g., temperature, blood pressure)."
* unit 0..1
* source 0..1
* parent 0..1
* operationalStatus 0..1
* color 0..1
* category 1..1 MS
* measurementPeriod 0..1
* calibration 0..*


Instance: devicemetric-004
InstanceOf: NgDeviceMetric
Title: "Example: NG DeviceMetric"
Description: "An example metric from a chemistry analyzer measuring glucose level."

* type.coding[0].system = "http://loinc.org"
* type.coding[0].code = #15074-8
* type.coding[0].display = "Glucose [Moles/volume] in Serum or Plasma"
* unit.coding[0].system = "http://unitsofmeasure.org"
* unit.coding[0].code = #mmol/L
* unit.coding[0].display = "millimole per liter"
* category = #measurement
* operationalStatus = #on
* color = #yellow
* measurementPeriod.repeat.frequency = 1
* measurementPeriod.repeat.period = 5
* measurementPeriod.repeat.periodUnit = #s
* calibration[0].type = #offset
* calibration[0].state = #calibrated
* calibration[0].time = "2025-07-30T09:00:00+01:00"