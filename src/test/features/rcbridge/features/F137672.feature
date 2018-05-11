# Last updated on 2018-05-10T20:43:16.644Z
@MVP
Feature: F137672 - Add and Remove Provider to Entity Relationship

  Scenario: US980944
    Given I am a User with access to maintain Entity information
    When I am adding a relationship between a Provider and an Entity
    Then I can define the Relationship Role the Provider has in relation to the Entity

  Scenario: US927841
    Given I am the Entity Management Solution
    When a User adds a relationship between a Provider and an Entity
    When And a User updates a relationship between a Provider and an Entity
    When And a User removes a relationship between a Provider and an Entity
    Then I capture the effective date of the relationship
    Then And I capture the end date of the relationship
    Then And I capture the User who performed the change
    Then And I capture the time and date of when the User performed the change

  Scenario: US980966
    Given I am a User with access to maintain Entity information
    When I am adding a relationship between a Provider and an Entity
    Then I can select a Relationship Type to further define the relationship between the Provider and the Entity

  Scenario: US1105127
    Given I am the Entity Management Solution
    When a new Provider is associated with a TIN in a Legacy Application
    When And the new Provider is synchronized to the Entity Management Solution
    Then the Provider is tagged with "New Provider" in the Entity Management Solution
    Then And the Provider enters a workflow so a User can define the Provider/TIN Relationship Role and Type

  Scenario: US858675
    Given I am a User with access to maintain Entity information
    When I need to change a relationship between an Entity and a Provider
    Then I can select a new Relationship Role for a Provider in the relationship
    Then And I can select a new Relationship Type for a Provider in the relationship

  Scenario: US858677
    Given I am a User with access to maintain Entity information
    When I need to end a relationship between a Provider and an Entity
    Then I can remove the relationship between the Provider and the Entity

