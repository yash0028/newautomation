# Last updated on 2018-06-20T18:47:52.863Z
@Plus
Feature: F155316 - Inactivate and Void Identifier

  @2018.PI03
  Scenario: US1094021
    Given I am the Entity Management Solution
    When a User inactivates an Identifier
    And a User voids an Identifier
    Then I capture the User who performed the change
    And I capture the date and time of when the User inactivated or voided the Identifier

  @2018.PI03
  Scenario: US944896
    Given I am a User with access to maintain Entity information
    And all Entity relationships associated to the Identifier are reassigned or marked inactive
    And all Contractual relationships associated to the Identifier are reassigned or marked inactive
    And all Provider relationships associated to the Identifier are reassigned or marked inactive
    When I receive a request from an Owner of an Identifier who would like to inactivate their Identifier
    Then I must access the Entity Owning the Identifier
    And I I can add an inactivation date to an Entity Identifier
    And Inactivation date can be in the future or retroactive
    And standard date field validation is applied
    And all inactivated relationships associated to the Identifier are retained (not orphaned)
    And the inactivated Identifier enters the approval process workflow

  @2018.PI03
  Scenario: US950012
    Given I am a User with access to maintain Entity information
    And all Entity relationships associated to the Identifier are reassigned or marked inactive
    And all Contractual relationships associated to the Identifier are reassigned or marked inactive
    And all Provider relationships associated to the Identifier are reassigned or marked inactive
    When I need to void an incorrect Identifier
    Then I must access the Entity Owning the Identifier
    And I can void the Entity Identifier
    And void date can be in the future or retroactive
    And standard date field validation is applied
    And all voided relationships associated to the Identifier are retained (not orphaned)
    And the voided Identifier enters the approval process workflow

  @2018.PI03
  Scenario: US1094038
    Given I am a User with access to maintain Entity information
    When I am inactivating or voiding an Identifier
    Then I am required to provide a reason for inactivating or voiding the Identifier prior to completing the action
    And the system stores my reason for deactivation
    And the system stores my User credentials
    And the system stores the date and time when I performed the action

