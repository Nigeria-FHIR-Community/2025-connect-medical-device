Profile: NgBundleDeviceRegistration
Parent: Bundle
Id: ng-bundle-device-registration
Title: "5-NG-Bundle: Device Registration"
Description: "Bundle for registering a new medical device with associated metadata and manufacturer organization."

* type = #collection
* entry 1..* MS
* entry ^slicing.discriminator[0].type = #profile
* entry ^slicing.discriminator[0].path = "resource"
* entry ^slicing.rules = #open

* entry contains
    device 1..1 and
    deviceDefinition 1..1 and
    organization 1..1 and
    identifier 0..1

* entry[device].resource only NgDevice
* entry[deviceDefinition].resource only NgDeviceDefinition
* entry[organization].resource only NgOrganization


Instance: DeviceRegistrationBundle001
InstanceOf: NgBundleDeviceRegistration
Title: "Example: Device Registration Bundle"
Description: "An example bundle used to register a blood chemistry analyzer with regulatory authority."
Usage: #example

* type = #collection
* timestamp = "2025-07-30T10:15:00+01:00"
* entry[0].fullUrl = "urn:uuid:device-001"
* entry[0].resource = device-006

* entry[1].fullUrl = "urn:uuid:device-def-001"
* entry[1].resource = device-def-006

* entry[2].fullUrl = "urn:uuid:org-manufacturer"
* entry[2].resource = org-manufacturer


Instance: device-006
InstanceOf: NgDevice
* status = #active
* manufacturer = "Abbott Diagnostics"
* deviceName[0].name = "ARCHITECT c4000"
* deviceName[0].type = #manufacturer-name
* serialNumber = "SN123456789"
* modelNumber = "C4000"
* definition.reference = "urn:uuid:device-def-001"
* type = #chemistryAnalyzer
* identifier.value = "hsytsy"
* identifier.system = "GE"

Instance: device-def-006
InstanceOf: NgDeviceDefinition
* deviceName[0].name = "ARCHITECT c4000"
* deviceName[0].type = #manufacturer-name
* modelNumber = "C4000"
* type.coding[0].code = #CHEM
* type.coding[0].system = "http://terminology.hl7.org/CodeSystem/device-type"

Instance: org-manufacturer
InstanceOf: NgOrganization
* identifier[0].system = "https://ndra.gov.ng"
* identifier[0].value = "ABBOTT001"
* name = "Abbott Diagnostics Ltd"
* type[0].coding[0].code = #manufacturer
* address.city = "Abuja"
* address.line = "Plot 45 BioTech Drive"
* address.district = #eti-osa
* address.state = "FCT"