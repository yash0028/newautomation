# Last updated on 
@US944896
Feature: US944896 - Inactivate Identifier

  @TC565960
  @Automated
  @Functional
  Scenario: TC565960 - [RL0]
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

