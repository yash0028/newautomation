# Last updated on 
@MVP
@US1243370
@2018.PI03
Feature: US1243370 - Contract Class Validation UHC table

  @TC549317
  @Manual
  @Functional
  Scenario: TC549317 - Contract Class Validation UHC table
    Given a contract sub type value exists
    When a contract sub type is selected
    Then the edit table validates the correct sub type was selected

  @CLM_UAT
  @TC554927
  @Manual
  @Acceptance
  Scenario: TC554927 - Validate Contract Class Validation UHC table
    Given a contract sub type value exists
    When a contract sub type is selected
    Then the edit table validates the correct sub type was selected

