Profile: NgBundleDeviceMonitoringSession
Parent: Bundle
Id: ng-bundle-device-monitoring-session
Title: "2-NG-Bundle: Device Monitoring Session"
Description: "A Bundle capturing device-generated data during a patient monitoring session."

* type = #collection
* meta.lastUpdated 0..1 MS
* entry 1..* MS
* entry ^slicing.discriminator[0].type = #profile
* entry ^slicing.discriminator[0].path = "resource"
* entry ^slicing.rules = #open

* entry contains
    device 1..1 and
    deviceMetric 0..* and
    observation 1..* and
    diagnosticReport 0..1 and
    patient 1..1 and
    encounter 0..1

* entry[device].resource only Device
* entry[deviceMetric].resource only DeviceMetric
* entry[observation].resource only Observation
* entry[diagnosticReport].resource only DiagnosticReport
* entry[patient].resource only Patient
* entry[encounter].resource only Encounter





Instance: DeviceMonitoringSessionExample
InstanceOf: NgBundleDeviceMonitoringSession
Title: "Example: Device Monitoring Session"
Description: "An example bundle for a vital signs monitoring session"
Usage: #example

* type = #collection
* timestamp = "2025-07-30T10:00:00+01:00"

* entry[0].fullUrl = "urn:uuid:device-003"
* entry[0].resource = device-008

* entry[1].fullUrl = "urn:uuid:deviceMetric-003"
* entry[1].resource = deviceMetric-008

* entry[2].fullUrl = "urn:uuid:observation-hr"
* entry[2].resource = observation-hr

* entry[3].fullUrl = "urn:uuid:diagnostic-report-003"
* entry[3].resource = diagnostic-report-008

* entry[4].fullUrl = "urn:uuid:patient-008"
* entry[4].resource = patient-008

* entry[5].fullUrl = "urn:uuid:encounter-008"
* entry[5].resource = encounter-008

Instance: device-008
InstanceOf: Device
* identifier.system = "http://hospital.smartdev.com/devices"
* identifier.value = "CHEM-ANA-0099"
* manufacturer = "SmartDev"
* deviceName[0].name = "Chemistry Analyser 9000"
* deviceName[0].type = #manufacturer-name
* type.text = "Chemistry Analyser"
* status = #active

Instance: deviceMetric-008
InstanceOf: DeviceMetric
* type.text = "Heart Rate"
* unit.text = "beats/min"
* operationalStatus = #on
* category = #measurement
* parent.reference = "urn:uuid:device-001"

Instance: observation-hr
InstanceOf: Observation
* status = #final
* code.text = "Heart Rate"
* valueQuantity.value = 84
* valueQuantity.unit = "beats/min"
* subject.reference = "urn:uuid:patient-001"
* device.reference = "urn:uuid:device-001"
* effectiveDateTime = "2025-07-30T09:58:00+01:00"

Instance: diagnostic-report-008
InstanceOf: DiagnosticReport
* status = #final
* code.text = "Vital Signs Summary"
* subject.reference = "urn:uuid:patient-001"
* result[0].reference = "urn:uuid:observation-hr"
* effectiveDateTime = "2025-07-30T10:00:00+01:00"

Instance: patient-008
InstanceOf: Patient
* identifier[0].system = "https://nimc.gov.ng"
* identifier[0].value = "NIN98989898"
* name[0].given = "Grace"
* name[0].family = "Ibrahim"
* gender = #female
* birthDate = "1990-06-15"

Instance: encounter-008
InstanceOf: Encounter
* status = #finished
* class.code = #AMB
* subject.reference = "urn:uuid:patient-001"
* period.start = "2025-07-30T09:45:00+01:00"
* period.end = "2025-07-30T10:05:00+01:00"
