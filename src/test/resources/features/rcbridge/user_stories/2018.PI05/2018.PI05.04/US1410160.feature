# Last updated on 
@US1410160
@2018.PI05
@2018.PI05.04
@releaseUnknown
@iterationUnknown
Feature: US1410160 - Identify PANEL ALREADY EXISTS Type 2 error

  @TC706019
  @Manual
  @Functional
  Scenario: TC706019 - [RL0]
    ##Scenario 1 (Identify panel already exists as type 2)
    Given I have submitted a contract master request
    When The response from the NDB API indicates an error due to panel already exists
    Then The error should be classified as a type 2 error

