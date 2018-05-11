# Last updated on 2018-04-25T17:17:17.661Z
@MVP
Feature: F152967 - Inactivate Entity

  Scenario: US1089321
    Given I am a User with access to maintain Entities
    When I want to modify an Entity that is currently inactive
    Then I am not able to write new contracts to the Entity
    Then And I am not able to assign new provider relationships to the Entity
    Then And I am not able to assign new Entity relationships to the Entity
    Then And I am not able to assign new Identifiers to the Entity

  Scenario: US858594
    Given I am a User who has access to maintain an Entity
    Given And all contracts associated to the Entity are reassigned or marked inactive
    Given And all provider relationships associated to the Entity are reassigned or marked inactive
    Given And all Entity relationships associated to the Entity are reassigned or marked inactive
    Given And all Identifiers associated to the Entity are reassigned or marked inactive
    When I want to deactivate an Entity
    Then I have the ability to indicate that the Entity is no longer active
    Then And all inactivated relationships associated to the Entity are retained (not orphaned)
    Then And the updated Entity enters the approval process workflow

  Scenario: US944246
    Given I am the Entity Management Solution
    When A User inactivates an Entity
    Then I capture the User who performed the change
    Then And I capture the date and time of when the User inactivated the Entity

  Scenario: US944247
    Given I am a User
    When I am inactivating an Entity
    Then I am required to provide a reason for inactivating the Entity prior to completing the inactivation
