# Last updated on 
@EXARI-11249
@US1089624
@F207077
Feature: US1089624 - Perform Identifier Field Validation - Add Identifier

  @TC564675
  @Automated
  @Functional
  @EXARI-11249
  @US1089624
  Scenario: TC564675 - [RL0]
    Given I am the Entity Management Solution
    When a User adds an Identifier to an Entity
    Then I perform field validation to ensure the Identifier was entered in the correct format based on Identifier Type selected
    And I perform a duplicate check on the new Identifier

