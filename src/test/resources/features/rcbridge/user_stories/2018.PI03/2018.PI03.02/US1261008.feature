# Last updated on 
@CLM_UAT
@MSG
@US1261008
@2018.PI03
@2018.PI03.02
@releaseUnknown
@iterationUnknown
Feature: US1261008 - [Unfinished] Create External Data Query to MSG

  @TC543451
  @Manual
  @Acceptance
  @CLM_UAT
  @MSG
  Scenario: TC543451 - [RL0] Create External Data Query to MSG (Happy Path Validation)
    When the MSG microservice is called
    Then a valid response is returned

