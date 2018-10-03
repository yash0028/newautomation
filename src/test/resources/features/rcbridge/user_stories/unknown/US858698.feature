# Last updated on 
@MVP
@EXARI-11273
@US858698
@MVP
@Plus
@Priority_1
@F137674
Feature: US858698 - Capture Entity Attribute Time Lining History

  @TC565513
  @Automated
  @Functional
  @MVP
  @EXARI-11273
  @US858698
  Scenario: TC565513 - [RL0]
    Given I am the Entity Management Solution
    When an Administrative User creates an Entity Attribute
    And an Administrative User updates an Entity Attribute
    And an Administrative User expires an Entity Attribute
    Then I capture the previous Entity Attribute value
    And I capture the current Entity Attribute value
    And I capture the Administrative User who performed the change
    And I capture the date and time of when the Administrative User performed the change

