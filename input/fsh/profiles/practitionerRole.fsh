Profile: NgPractitionerRole
Parent: PractitionerRole
Id: ng-practitionerrole
Title: "NG PractitionerRole"
Description: "A profile for defining the role of a practitioner within an organization."

* practitioner 1..1 MS
* organization 1..1 MS
* code 0..* MS
* specialty 0..*
* location 0..*
* active 0..1


Instance: practitioner-role-004
InstanceOf: NgPractitionerRole
Title: "Example: NG PractitionerRole"
Description: "An example defining the role of a practitioner within a Nigerian healthcare organization."
Usage: #example

* practitioner.reference = "Practitioner/practitioner-001"
* organization.reference = "Organization/organization-001"
* code[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/practitioner-role"
* code[0].coding[0].code = #doctor
* code[0].coding[0].display = "Doctor"
* specialty[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/c80-practice-codes"
* specialty[0].coding[0].code = #408443003
* specialty[0].coding[0].display = "General medicine"
* active = true