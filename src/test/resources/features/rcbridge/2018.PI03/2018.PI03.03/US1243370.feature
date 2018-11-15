# Last updated on 
@MVP
@US1243370
@2018.PI03
@2018.PI03.03
@CMD2
@Priority_2
@releasePast
@iterationPast
Feature: US1243370 - Contract Class Validation UHC table

  @TC565115
  @Automated
  @Functional
  @MVP
  Scenario: TC565115 - [RL0]
    Given a contract sub type value exists
    When a contract sub type is selected
    Then the edit table validates the correct sub type was selected

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
  Scenario: TC549317 - Contract Class Validation UHC table
    Given a contract sub type value exists
    When a contract sub type is selected
    Then the edit table validates the correct sub type was selected

