# Last updated on 
@US1089924
@F207077
Feature: US1089924 - Assign Owner to Updated Identifier

  @TC564617
  @Automated
  @Functional
  @US1089924
  Scenario: TC564617 - [RL0]
    Given I am the Entity Management Solution
    When a User updates an Identifier to an Entity
    Then I check the Identifier for the presence of an Owner
    And I display Owner associated to the Identifier
    And the User must select the existing Owner for the Identifier or assign new Owner if not present

