# Last updated on 2018-06-05T15:33:31.003Z
@MVP
@Plus
Feature: F155318 - Inactivate and Void Identifier Relationship with an Entity

  Scenario: US950017
    Given I am a User with access to maintain Entity information
    When I need to void the relationship between an Identifier and an Entity
    Then I can enter an end date to terminate the relationship between the Identifier and the Entity

  Scenario: US1090067
    Given I am a User with access to maintain Entity information
    When I need to inactivate the relationship between an Identifier and an Entity
    Then I can enter an end date to terminate the active relationship between the Identifier and the Entity
    Then And the Entity retains the effective and end dates for when it was in an active relationship with the Identifier
    Then And the Identifier retains the effective and end dates for when it was in an active relationship with the Entity

