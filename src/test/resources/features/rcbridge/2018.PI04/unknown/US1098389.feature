# Last updated on 
@MVP
@Plus
@US1098389
@2018.PI04
@releasePast
@iterationUnknown
Feature: US1098389 - Specify transactions values via UI

  @TC565145
  @Automated
  @Functional
  @MVP
  @Plus
  Scenario: TC565145 - [RL0]
    Given that a user has initiated a Mass Action
    When the user wants to specify the transaction values within the UI
    Then Exari will produce a list of available fields to update
    And the User can input target values

