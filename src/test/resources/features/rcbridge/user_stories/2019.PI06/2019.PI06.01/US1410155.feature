# Last updated on 
@US1410155
@2019.PI06
@2019.PI06.01
@releasePresent
@iterationPresent
Feature: US1410155 - Identify PANEL DATES NOT W/IN SITE PANEL TABLE  Type 2 error  [Cosmos Dependency]

  @TC706021
  @Manual
  @Functional
  Scenario: TC706021 - [RL0]
    Given I have submitted a contract master request
    When The response from the NDB API indicates an error due to panel dates not in site panel table error
    Then The error should be classified as a type 2 error
    ###

