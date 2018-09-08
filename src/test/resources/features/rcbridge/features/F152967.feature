# Last updated on 
@MVP
@Plus
@Priority_1
@F152967
Feature: F152967 - Exari EM - Inactivate Entity

  @MVP
  @EXARI-11267
  @EXARI-11270
  @EXARI-11249
  @CLM_UAT
  @US1089321
  Scenario: US1089321 - Prevent Inactive Entity Maintenance
    Given I am a User with access to maintain Entities
    When I want to modify an Entity that is currently inactive
    Then I am not able to write new contracts to the Entity
    And I am not able to assign new provider relationships to the Entity
    And I am not able to assign new Entity relationships to the Entity
    And I am not able to assign new Identifiers to the Entity

  @MVP
  @EXARI-11267
  @EXARI-11249
  @CLM_UAT
  @US858594
  Scenario: US858594 - Inactivate Entity
    Given I am a User who has access to maintain an Entity
    And all contracts associated to the Entity are reassigned or marked inactive
    And all provider relationships associated to the Entity are reassigned or marked inactive
    And all Entity relationships associated to the Entity are reassigned or marked inactive
    And all Identifiers associated to the Entity are reassigned or marked inactive
    When I want to deactivate an Entity
    Then I have the ability to indicate that the Entity is no longer active
    And all inactivated relationships associated to the Entity are retained (not orphaned)

  @MVP
  @EXARI-11273
  @US944246
  Scenario: US944246 - Capture Entity Inactivation Time Lining History
    Given I am the Entity Management Solution
    When A User inactivates an Entity
    Then I capture the User who performed the change
    And I capture the date and time of when the User inactivated the Entity

  @MVP
  @EXARI-11267
  @EXARI-11249
  @CLM_UAT
  @US944247
  Scenario: US944247 - Capture Reason for Entity Inactivation
    Given I am a User
    When I am inactivating an Entity
    Then I am required to provide a reason for inactivating the Entity prior to completing the inactivation

