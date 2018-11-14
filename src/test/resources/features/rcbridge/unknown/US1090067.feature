# Last updated on 
@US1090067
@releaseUnknown
@iterationUnknown
Feature: US1090067 - Inactivate Identifier Relationship with Entity

  @TC565142
  @Automated
  @Functional
  Scenario: TC565142 - [RL0]
    Given I am a User with access to maintain Entity information
    When I need to inactivate the relationship between an Identifier and an Entity
    Then I can enter an end date to terminate the active relationship between the Identifier and the Entity
    And the Entity retains the effective and end dates for when it was in an active relationship with the Identifier
    And the Identifier retains the effective and end dates for when it was in an active relationship with the Entity

