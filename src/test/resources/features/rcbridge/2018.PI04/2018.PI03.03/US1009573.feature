# Last updated on 
@CLM_UAT
@MSG
@US1009573
@2018.PI04
@2018.PI03.03
@MVP
@Plus
@Priority_1
@CLM_Exari
@Exari_Microservice
@releasePast
@iterationPast
Feature: US1009573 - [Continued] Create External Data Query to MSG

  @TC536736
  @Manual
  @Acceptance
  @CLM_UAT
  @MSG
  Scenario: TC536736 - Bad Path Validation for MSG
    Given invalid input data
    When inputting the input data into the MSG external data query
    Then an invalid response is returned

  @TC536735
  @Manual
  @Acceptance
  @CLM_UAT
  @MSG
  Scenario: TC536735 - [RL0] Happy Path Validation
    When the MSG microservice is called from Exari
    Then a valid response is returned

