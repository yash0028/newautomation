# Last updated on 
@US1410167
@2019.PI06
@2019.PI06.01
@releasePresent
@iterationPast
Feature: US1410167 - Identify CONTRACT VOIDED - NO RULES MATCHED Type 2 error [NDB Dependency]

  @TC706027
  @Manual
  @Functional
  Scenario: TC706027 - [RL0]
    ##Scenario 1 (Identify contract voided no rules as type 2)
    Given I have submitted a contract master request
    When The response from the NDB API indicates an error due contract voided no rules
    Then The error should be classified as a type 2 error

