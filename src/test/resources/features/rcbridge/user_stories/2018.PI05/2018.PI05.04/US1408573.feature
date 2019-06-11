# Last updated on 
@US1408573
@2018.PI05
@2018.PI05.04
@releasePast
@iterationPast
Feature: US1408573 - Identify no active UHC-ID's error code from COSMOS or NDB as Type 2 error

  @TC697428
  @Manual
  @Functional
  Scenario: TC697428 - [RL0]
    Given I have submitted a contract master request
    When The response from the NDB API indicates there is no UHC-ID built for the providern
    Then The error should be classified as a type 2 error
    ###

