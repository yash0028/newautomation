# Last updated on 
@EXARI-11249
@US1089668
@F207077
Feature: US1089668 - Perform Identifier Field Validation - Update Identifier

  @TC564710
  @Automated
  @Functional
  @EXARI-11249
  @US1089668
  Scenario: TC564710 - [RL0]
    Given I am the Entity Management Solution
    When a User updates an Identifier on an Entity
    Then I perform field validation to ensure the Identifier was entered in the correct format based on Identifier Type selected
    And I must perform a duplicate check on the Identifier

