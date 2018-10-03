# Last updated on 
@US950012
@Plus
@F155316
Feature: US950012 - Void Identifier

  @TC564660
  @Automated
  @Functional
  @US950012
  Scenario: TC564660 - [RL0]
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

