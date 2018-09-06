# Last updated on 
@US1089630
Feature: US1089630 - Assign Owner to New Identifier

  @TC565120
  @Automated
  @Functional
  Scenario: TC565120 - [RL0]
    Given I am the Entity Management Solution
    When a User adds an Identifier to an Entity
    Then I check the Identifier for the presence of an Owner
    And I display Owner associated to the Identifier
    And the User must select the existing Owner for the Identifier or assign new Owner if not present

