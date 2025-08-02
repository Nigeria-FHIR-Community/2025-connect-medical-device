Profile: NgClaimCoverage
Parent: Coverage
Id: ng-claim-coverage
Title: "NG-Claim Coverage"
Description: "A profile capturing a patient's insurance coverage details."

* status 1..1 MS
* type 1..1 MS
* subscriber 0..1 MS
* beneficiary 1..1 MS
* payor 1..1 MS
* period 0..1


Instance: coverage-004
InstanceOf: NgClaimCoverage
Title: "Example: Claim Coverage"
Description: "An example of a patient's insurance coverage details."
Usage: #example

* status = #active
* type.coding[0].system = "http://terminology.hl7.org/CodeSystem/coverage-type"
* type.coding[0].code = #EHCPOL
* beneficiary.reference = "urn:uuid:patient-001"
* payor[0].reference = "urn:uuid:organization-001"
* period.start = "2025-01-01"
* period.end = "2025-12-31"