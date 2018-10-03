# Last updated on 
@US1224662
@MVP
@Plus
@Priority_1
@F181492
Feature: US1224662 - Terminated MPIN/TIN Relationship

  @TC565015
  @Automated
  @Functional
  @US1224662
  Scenario: TC565015 - [RL0]
    Given I am the Entity Management Solution
    When the MPIN/TIN relationship is terminated in NDB
    And the MPIN/TIN relationship exists in Entity Management
    Then the Entity Management Solution is updated
    And the updated MPIN/TIN relationship is visible in the Entity Management Solution

