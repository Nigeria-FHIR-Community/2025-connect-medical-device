Profile: NgCoverageEligibilityRequest
Parent: CoverageEligibilityRequest
Id: ng-eligibility-request
Title: "NG-CoverageEligibilityRequest"
Description: "A profile for checking patient's eligibility for insurance services."

* status 1..1 MS
* patient 1..1 MS
* created 1..1 MS
* insurer 1..1 MS
* provider 0..1
* insurance 1..* MS



Instance: eligibility-request-004
InstanceOf: NgCoverageEligibilityRequest
Title: "Example: Coverage Eligibility Request"
Description: "An example of a patient's request to check insurance service eligibility."
Usage: #example

* status = #active
* patient.reference = "urn:uuid:patient-001"
* created = "2025-08-06"
* insurer.reference = "urn:uuid:organization-001"
* provider.reference = "urn:uuid:practitioner-001"
* insurance[0].focal = true
* insurance[0].coverage.reference = "urn:uuid:coverage-001"
* purpose = #test