# Last updated on 
@MVP
@US1243370
@2018.PI03
@2018.PI03.03
@releasePast
@iterationPast
Feature: US1243370 - Contract Class Validation UHC table

  @CLM_UAT
  @TC554927
  @Manual
  @Acceptance
  @MVP
  Scenario: TC554927 - Validate Contract Class Validation UHC table
    Given a contract sub type value exists
    When a contract sub type is selected
    Then the edit table validates the correct sub type was selected

  @TC549317
  @Manual
  @Functional
  @MVP
  Scenario: TC549317 - [RL0] Contract Class Validation UHC table
    Given a contract sub type value exists
    When a contract sub type is selected
    Then the edit table validates the correct sub type was selected

