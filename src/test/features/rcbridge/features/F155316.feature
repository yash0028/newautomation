# Last updated on 2018-05-11T15:59:51.196Z
@MVP
@Plus
Feature: F155316 - Inactivate and Void Identifier

  Scenario: US1094021
    Given I am the Entity Management Solution
    When a User inactivates an Identifier
    When And a User voids an Identifier
    Then I capture the User who performed the change
    Then And I capture the date and time of when the User inactivated or voided the Identifier

  Scenario: US944896
    Given I am a User with access to maintain Entity information
    Given And all Entity relationships associated to the Identifier are reassigned or marked inactive
    Given And all Contractual relationships associated to the Identifier are reassigned or marked inactive
    Given And all Provider relationships associated to the Identifier are reassigned or marked inactive
    When I receive a request from an Owner of an Identifier who would like to inactivate their Identifier
    Then I must access the Entity Owning the Identifier
    Then And I I can add an inactivation date to an Entity Identifier
    Then And Inactivation date can be in the future or retroactive
    Then And standard date field validation is applied
    Then And all inactivated relationships associated to the Identifier are retained (not orphaned)
    Then And the inactivated Identifier enters the approval process workflow

  Scenario: US950012
    Given I am a User with access to maintain Entity information
    Given And all Entity relationships associated to the Identifier are reassigned or marked inactive
    Given And all Contractual relationships associated to the Identifier are reassigned or marked inactive
    Given And all Provider relationships associated to the Identifier are reassigned or marked inactive
    When I need to void an incorrect Identifier
    Then I must access the Entity Owning the Identifier
    Then And I can void the Entity Identifier
    Then And void date can be in the future or retroactive
    Then And standard date field validation is applied
    Then And all voided relationships associated to the Identifier are retained (not orphaned)
    Then And the voided Identifier enters the approval process workflow

  Scenario: US1094038
    Given I am a User with access to maintain Entity information
    When I am inactivating or voiding an Identifier
    Then I am required to provide a reason for inactivating or voiding the Identifier prior to completing the action
    Then And the system stores my reason for deactivation
    Then And the system stores my User credentials
    Then And the system stores the date and time when I performed the action

