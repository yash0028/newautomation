# Last updated on 
@Plus
@Priority_1
@F137672
Feature: F137672 - Exari EM - Add and Remove Provider to Entity Relationship

  @EXARI-11249
  @US980944
  Scenario: US980944 - Add Provider Relationship Role
    Given I am a User with access to maintain Entity information
    When I am adding a relationship between a Provider and an Entity
    Then I can define the Relationship Role the Provider has in relation to the Entity

  @US927841
  Scenario: US927841 - Capture Relationship Time Lining History
    Given I am the Entity Management Solution
    When a User adds a relationship between a Provider and an Entity
    And a User updates a relationship between a Provider and an Entity
    And a User removes a relationship between a Provider and an Entity
    Then I capture the effective date of the relationship
    And I capture the end date of the relationship
    And I capture the User who performed the change
    And I capture the time and date of when the User performed the change

  @US980966
  Scenario: US980966 - Add Provider Relationship Type
    Given I am a User with access to maintain Entity information
    When I am adding a relationship between a Provider and an Entity
    Then I can select a Relationship Type to further define the relationship between the Provider and the Entity

  @US1105127
  Scenario: US1105127 - Default Relationship Type
    Given I am the Entity Management Solution
    When a new Provider is associated with a TIN in a Legacy Application
    And the new Provider is synchronized to the Entity Management Solution
    Then the Provider is tagged with "New Provider" in the Entity Management Solution
    And the Provider enters a workflow so a User can define the Provider/TIN Relationship Role and Type

  @US858675
  Scenario: US858675 - Update Provider Relationship
    Given I am a User with access to maintain Entity information
    When I need to change a relationship between an Entity and a Provider
    Then I can select a new Relationship Role for a Provider in the relationship
    And I can select a new Relationship Type for a Provider in the relationship

  @US858677
  Scenario: US858677 - Remove Provider Relationship
    Given I am a User with access to maintain Entity information
    When I need to end a relationship between a Provider and an Entity
    Then I can remove the relationship between the Provider and the Entity

