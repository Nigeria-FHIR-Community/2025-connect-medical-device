Profile: NgDocumentReference
Parent: DocumentReference
Id: ng-document-reference
Title: "NG DocumentReference"
Description: "A profile for referencing external or internal documents such as lab reports, discharge summaries, prescriptions, or scanned forms."

* status 1..1 MS
* docStatus 0..1
* type 1..1 MS
* category 0..*
* subject 1..1 MS
* date 0..1 MS
* author 0..*
* authenticator 0..1
* custodian 0..1
* relatesTo 0..*
* description 0..1
* securityLabel 0..*
* content 1..* MS
* content.attachment 1..1 MS
* content.format 0..1
* context 0..1
* context.encounter 0..1
* context.period 0..1
* context.facilityType 0..1

Instance: example-document-reference
InstanceOf: NgDocumentReference
Title: "Example: Scanned Discharge Summary"
Description: "An example of a scanned discharge summary document reference."
Usage: #example

* status = #current
* docStatus = #final
* type.coding[0].system = "http://loinc.org"
* type.coding[0].code = #18842-5
* type.coding[0].display = "Discharge summary"
* category[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/document-classcodes"
* category[0].coding[0].code = #DS
* category[0].coding[0].display = "Discharge Summary"
* subject.reference = "Patient/patient-001"
* date = "2025-08-05T12:30:00+01:00"
* author[0].reference = "Practitioner/practitioner-001"
* custodian.reference = "Organization/org-hospital"
* description = "Scanned copy of discharge summary for hospitalization between 01-Aug and 05-Aug"
* content[0].attachment.contentType = #application/pdf
* content[0].attachment.url = "https://example.org/docs/discharge-summary-20250805.pdf"
* content[0].attachment.title = "Discharge Summary"
* content[0].attachment.creation = "2025-08-05T12:00:00+01:00"
* content[0].format.system = "http://ihe.net/fhir/ihe.formatcode.fhir"
* content[0].format.code = #urn:ihe:iti:xds-sd:pdf:2008
* content[0].format.display = "XDS-SD PDF"
* context.encounter.reference = "Encounter/encounter-001"
* context.period.start = "2025-08-01T10:00:00+01:00"
* context.period.end = "2025-08-05T09:00:00+01:00"
* context.facilityType.coding[0].system = "http://terminology.hl7.org/CodeSystem/service-type"
* context.facilityType.coding[0].code = #322
* context.facilityType.coding[0].display = "Hospital facility"