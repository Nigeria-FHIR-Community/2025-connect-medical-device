Profile: NgBundleDeviceProvenance
Parent: Bundle
Id: ng-bundle-device-provenance
Title: "4-NG-Bundle: Device Provenance"
Description: "A Bundle capturing provenance data for device data submission or synchronization."

* type = #collection
* meta.lastUpdated 0..1 MS
* entry 1..* MS
* entry ^slicing.discriminator[0].type = #profile
* entry ^slicing.discriminator[0].path = "resource"
* entry ^slicing.rules = #open

* entry contains
    device 1..1 and
    provenance 1..1 and
    organization 1..1 and
    patient 0..1

* entry[device].resource only Device
* entry[provenance].resource only Provenance
* entry[organization].resource only Organization
* entry[patient].resource only Patient

Instance: DeviceProvenanceBundleExample
InstanceOf: NgBundleDeviceProvenance
Title: "Example: Device Provenance Bundle"
Description: "An example bundle showing provenance for a submitted device record."
Usage: #example

* type = #collection
* timestamp = "2025-07-30T11:30:00+01:00"

* entry[0].fullUrl = "urn:uuid:device-001"
* entry[0].resource = device-001

* entry[1].fullUrl = "urn:uuid:provenance-005"
* entry[1].resource = provenance-005

* entry[2].fullUrl = "urn:uuid:org-005"
* entry[2].resource = org-005

* entry[3].fullUrl = "urn:uuid:patient-005"
* entry[3].resource = patient-005

Instance: device-001
InstanceOf: Device
* identifier.system = "http://hospital.smartdev.com/devices"
* identifier.value = "CHEM-ANA-0099"
* manufacturer = #SmartDev
* type.text = "Chemistry Analyser"
* status = #active

Instance: provenance-005
InstanceOf: Provenance
* target[0].reference = "urn:uuid:device-005"
* recorded = "2025-07-30T11:25:00+01:00"
* agent[0].type.text = "Device Registration Service"
* agent[0].who.display = "AutoSync Service"
* entity[0].role = #source
* entity[0].what.display = "Device Onboarding CSV"

Instance: org-005
InstanceOf: Organization
* identifier.system = "https://herfama.lagos.ng"
* identifier.value = "HF009"
* name = "Faith Medical Diagnostics"

Instance: patient-005
InstanceOf: Patient
* identifier.system = "https://nimc.gov.ng"
* identifier.value = "NIN99887766"
* name[0].given = "Musa"
* name[0].family = "Abubakar"
* gender = #male
* birthDate = "1988-04-22"