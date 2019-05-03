# Last updated on 
@US1410130
@2019.PI06
@2019.PI06.02
@releasePast
@iterationPast
Feature: US1410130 - Identify Invalid COSMOS network number as Type 2 error [Cosmos Dependency]

  @TC697429
  @Manual
  @Functional
  Scenario: TC697429 - [RL0]
    Given I have submitted a contract master request
    When The response from the NDB API indicates invalid COSMOS network number
    Then The error should be classified as a type 2 error
    ###

