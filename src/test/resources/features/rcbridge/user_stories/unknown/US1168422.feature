# Last updated on 
@MVP
@CLM_UAT
@US1168422
Feature: US1168422 - Select Identifier Type

  @TC565334
  @Automated
  @Functional
  Scenario: TC565334 - [RL0]
    Given I am a User with access to maintain Entity information
    When I am adding an Identifier to an Entity
    Then I must select an Identifier Type to define the type of Identifier I am adding

