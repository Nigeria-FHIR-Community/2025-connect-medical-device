Profile: NgBundleDeviceAudit
Parent: Bundle
Id: ng-bundle-device-audit
Title: "1-NG-Bundle: Device Audit"
Description: "Bundle profile capturing audit events related to device usage and operations."

* meta.lastUpdated 0..1 MS
* type = #collection

* entry 1..* MS
* entry ^slicing.discriminator[0].type = #profile
* entry ^slicing.discriminator[0].path = "resource"
* entry ^slicing.rules = #open

* entry contains
    auditEvent 1..* and
    device 1..1 and
    organization 0..1

* entry[auditEvent].resource only AuditEvent
* entry[device].resource only Device
* entry[organization].resource only Organization


Instance: DeviceAuditExample
InstanceOf: NgBundleDeviceAudit
Title: "Example: Device Audit Bundle"
Description: "An example bundle for auditing device events."
Usage: #example

* type = #collection
* timestamp = "2025-07-30T10:10:00+01:00"

* entry[0].fullUrl = "urn:uuid:audit-001"
* entry[0].resource.resourceType = "AuditEvent"
* entry[0].resource.type.system = "http://terminology.hl7.org/CodeSystem/audit-event-type"
* entry[0].resource.type.code = #rest
* entry[0].resource.subtype[0].system = "http://hl7.org/fhir/restful-interaction"
* entry[0].resource.subtype[0].code = #read
* entry[0].resource.recorded = "2025-07-30T10:09:50+01:00"
* entry[0].resource.source.site = "Laboratory Information System"
* entry[0].resource.source.observer.reference = "urn:uuid:org-001"
* entry[0].resource.agent[0].who.reference = "urn:uuid:device-001"
* entry[0].resource.agent[0].requestor = false

* entry[1].fullUrl = "urn:uuid:device-001"
* entry[1].resource.resourceType = "Device"
* entry[1].resource.udiCarrier.deviceIdentifier = "CHEM12345678"
* entry[1].resource.status = #active
* entry[1].resource.manufacturer = "BioAnalyzer Ltd"
* entry[1].resource.deviceName[0].name = "BioAnalyzer 2000"
* entry[1].resource.deviceName[0].type = #minjirya
* entry[2].fullUrl = "urn:uuid:org-001"
* entry[2].resource.resourceType = "Organization"
* entry[2].resource.identifier[0].system = "https://herfama.lagos.ng"
* entry[2].resource.identifier[0].value = "HF0001"
* entry[2].resource.name = "State Diagnostic Center"