# Last updated on 
@CLM_UAT
@MSG
@US1009573
@2018.PI03
Feature: US1009573 - [Continued] Create External Data Query to MSG

  @TC536736
  @Manual
  @Acceptance
  Scenario: TC536736 - Bad Path Validation for MSG
    Given invalid input data
    When inputting the input data into the MSG external data query
    Then an invalid response is returned

  @TC536735
  @Manual
  @Acceptance
  Scenario: TC536735 - Happy Path Validation
    Given valid input data
    When inputting the input data into the MSG external data query
    Then a valid response is returned

