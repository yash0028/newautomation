# Last updated on 
@US1089526
@F207050
Feature: US1089526 - Check for Duplicates - Updated Entity Address

  @TC565472
  @Automated
  @Functional
  @US1089526
  Scenario: TC565472 - [RL0]
    Given I am the Entity Management Solution
    When A User updates an Entity Address
    Then I perform a duplicate check on Entity Address
    And I display duplicates
    And User has ability to override duplicate or select from the potential duplicate list

