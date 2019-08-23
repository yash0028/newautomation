# Last updated on 
@Adele_R
@US1956580
@releaseUnknown
@iterationUnknown
Feature: US1956580 - MNSPS Fee Schedule resubmission  - Physician

  @TC949604
  @Manual
  @Functional
  @Adele_R
  Scenario: TC949604 - [RL0]
    Given MNSPS Fee Schedule need is identified in Physician workflow
    When any user denies a request
    Then the assignee is the Process Initiator or the Contractor
    And a task "MNSPS: Resubmit Request" is assigned

