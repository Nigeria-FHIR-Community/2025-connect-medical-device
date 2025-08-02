Profile: NgDiagnosticReport
Parent: DiagnosticReport
Id: ng-diagnostic-report
Title: "NG DiagnosticReport"
Description: "A profile representing diagnostic report results in the Nigerian health system."

* status 1..1 MS
* code 1..1 MS
* subject 1..1 MS
* encounter 0..1
* effective[x] 1..1 MS
* issued 0..1
* performer 0..* MS
* resultsInterpreter 0..*
* specimen 0..*
* result 0..* MS
* imagingStudy 0..*
* media 0..*
* conclusion 0..1
* presentedForm 0..*

Instance: ExampleNgDiagnosticReport
InstanceOf: NgDiagnosticReport
Title: "Example: NG Diagnostic Report"
Description: "An example diagnostic report for a blood chemistry test"
Usage: #example

* status = #final
* code.coding[0].system = "http://loinc.org"
* code.coding[0].code = #24323-8
* code.coding[0].display = "Basic Metabolic Panel"
* subject.reference = "Patient/patient-001"
* effectiveDateTime = "2025-07-30T10:30:00+01:00"
* issued = "2025-07-30T11:00:00+01:00"
* performer[0].reference = "Organization/org-lab"
* result[0].reference = "Observation/obs-glucose"
* result[1].reference = "Observation/obs-potassium"
* conclusion = "Basic metabolic panel results normal"