# Last updated on 
@MVP
@US1243370
@2018.PI03
@2018.PI03.03
@CMD2
@Priority_2
@F207419
@releasePast
@iterationPast
Feature: US1243370 - Contract Class Validation UHC table

  @TC549317
  @Manual
  @Functional
  @MVP
  @US1243370
  @2018.PI03
  @2018.PI03.03
  Scenario: TC549317 - Contract Class Validation UHC table
    Given a contract sub type value exists
    When a contract sub type is selected
    Then the edit table validates the correct sub type was selected

  @CLM_UAT
  @TC554927
  @Manual
  @Acceptance
  @MVP
  @US1243370
  @2018.PI03
  @2018.PI03.03
  Scenario: TC554927 - Validate Contract Class Validation UHC table
    Given a contract sub type value exists
    When a contract sub type is selected
    Then the edit table validates the correct sub type was selected

  @TC565115
  @Automated
  @Functional
  @MVP
  @US1243370
  @2018.PI03
  @2018.PI03.03
  Scenario: TC565115 - [RL0]
    Given a contract sub type value exists
    When a contract sub type is selected
    Then the edit table validates the correct sub type was selected

