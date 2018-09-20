# Last updated on 
@US1114659
Feature: US1114659 - Every TIN has an Owner

  @TC565983
  @Automated
  @Functional
  Scenario: TC565983 - [RL0]
    Given I am the Entity Management Solution
    When a TIN does not have an Owner
    Then I require the User to add an Owner to the TIN

