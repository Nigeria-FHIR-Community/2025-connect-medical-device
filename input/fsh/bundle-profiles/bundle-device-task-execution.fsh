Profile: NgBundleDeviceTaskExecution
Parent: Bundle
Id: ng-bundle-device-task-execution
Title: "6-NG-Bundle: Device Task Execution"
Description: "A bundle for coordinating the execution of a task on a device including requester, execution info, and the device involved."

* meta.lastUpdated 0..1 MS
* type = #collection

* entry 1..* MS
* entry ^slicing.discriminator[0].type = #profile
* entry ^slicing.discriminator[0].path = "resource"
* entry ^slicing.rules = #open

* entry contains
    device 1..1 and
    task 1..1 and
    organization 0..1 and
    practitioner 0..1 and
    serviceRequest 0..1

* entry[device].resource only Device
* entry[task].resource only Task
* entry[organization].resource only Organization
* entry[practitioner].resource only Practitioner
* entry[serviceRequest].resource only ServiceRequest


Instance: DeviceTaskExecutionBundle
InstanceOf: NgBundleDeviceTaskExecution
Title: "Example: Device Task Execution Bundle"
Description: "Example bundle for tracking execution of a calibration task on a device."
Usage: #example

* type = #collection
* timestamp = "2025-07-30T12:00:00+01:00"

* entry[0].fullUrl = "urn:uuid:device-007"
* entry[0].resource = device-007

* entry[1].fullUrl = "urn:uuid:task-007"
* entry[1].resource = task-007

* entry[2].fullUrl = "urn:uuid:org-007"
* entry[2].resource = org-007

* entry[3].fullUrl = "urn:uuid:practitioner-007"
* entry[3].resource = practitioner-007

* entry[4].fullUrl = "urn:uuid:service-request-007"
* entry[4].resource = service-request-007

Instance: device-007
InstanceOf: Device
* identifier.system = "https://nigeria.gov.ng/devices"
* identifier.value = "CHEM-ANALYZER-007"
* status = #active
* manufacturer = "Global Diagnostics Ltd"
* modelNumber = "ChemX-2000"
* type.text = "Automated Chemistry Analyzer"

Instance: task-007
InstanceOf: Task
* status = #in-progress
* intent = #order
* code.text = "Device Calibration"
* for.reference = "Device/device-007"
* requester.reference = "Practitioner/practitioner-001"
* executionPeriod.start = "2025-07-30T11:00:00+01:00"

Instance: org-007
InstanceOf: Organization
* identifier.system = "https://herfama.lagos.ng"
* identifier.value = "HF001"
* name = "Diagnostic Research Center"

Instance: practitioner-007
InstanceOf: Practitioner
* identifier.system = "https://mdcn.gov.ng"
* identifier.value = "MDCN001234"
* name.given = "Ifeoma"
* name.family = "Okoye"

Instance: service-request-007
InstanceOf: ServiceRequest
* status = #active
* intent = #order
* code.text = "Calibration Procedure Request"
* subject.reference = "Device/device-001"
* requester.reference = "Organization/org-001"
* authoredOn = "2025-07-30"
