# Last updated on 2018-06-15T14:05:32.949Z
@MVP
@Plus
@Priority_1
Feature: F152967 - Inactivate Entity

  @MVP
  @2018.PI03
  Scenario: US1089321
    Given I am a User with access to maintain Entities
    When I want to modify an Entity that is currently inactive
    Then I am not able to write new contracts to the Entity
    And I am not able to assign new provider relationships to the Entity
    And I am not able to assign new Entity relationships to the Entity
    And I am not able to assign new Identifiers to the Entity

  @MVP
  @EXARI-11249
  @EXARI-11267
  @2018.PI03
  Scenario: US858594
    Given I am a User who has access to maintain an Entity
    And all contracts associated to the Entity are reassigned or marked inactive
    And all provider relationships associated to the Entity are reassigned or marked inactive
    And all Entity relationships associated to the Entity are reassigned or marked inactive
    And all Identifiers associated to the Entity are reassigned or marked inactive
    When I want to deactivate an Entity
    Then I have the ability to indicate that the Entity is no longer active
    And all inactivated relationships associated to the Entity are retained (not orphaned)
    And the updated Entity enters the approval process workflow

  @MVP
  @EXARI-11273
  @2018.PI03
  Scenario: US944246
    Given I am the Entity Management Solution
    When A User inactivates an Entity
    Then I capture the User who performed the change
    And I capture the date and time of when the User inactivated the Entity

  @MVP
  @EXARI-11249
  @EXARI-11267
  @2018.PI03
  Scenario: US944247
    Given I am a User
    When I am inactivating an Entity
    Then I am required to provide a reason for inactivating the Entity prior to completing the inactivation

