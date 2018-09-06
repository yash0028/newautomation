# Last updated on 
@US1224723
@2018.PI03
Feature: US1224723 - Created MPIN/TIN Relationship

  @TC565799
  @Automated
  @Functional
  Scenario: TC565799 - [RL0]
    Given I am the Entity Management Solution
    When an MPIN relationship is created with that TIN in NDB
    And a TIN exists in Entity Management
    Then the Entity Management Solution is updated
    And the created MPIN/TIN relationship is visible in the Entity Management Solution

