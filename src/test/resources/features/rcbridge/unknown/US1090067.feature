# Last updated on 
@MVP
@US1090067
@MVP
@Plus
@Priority_1
@releaseUnknown
@iterationUnknown
Feature: US1090067 - Set Identifier Relationship Expiration Date

  @TC565142
  @Automated
  @Functional
  @MVP
  Scenario: TC565142 - [RL0]
    Given I am a User with access to maintain Entity information
    When I need to inactivate the relationship between an Identifier and an Entity
    Then I can enter an end date to terminate the relationship between the Identifier and the Entity
    And termination date applies only to the Identifier relationship with the Entity
    And termination date can be in the future or retroactive
    And the updated Entity enters the approval process workflow
    And the Entity retains the effective and end dates for when it was in an active relationship with the Identifier
    And the Identifier retains the effective and end dates for when it was in an active relationship with the Entity

