# Last updated on 
@US1114661
Feature: US1114661 - Single Organizational Unit Owner

  @TC565572
  @Automated
  @Functional
  Scenario: TC565572 - [RL0]
    Given I am the Entity Management Solution
    When a User attempts to add a second Owner to an Entity
    Then the User can change the Entity Owner to a different Owner
    And the Entity can not have two active Owners at the same time

