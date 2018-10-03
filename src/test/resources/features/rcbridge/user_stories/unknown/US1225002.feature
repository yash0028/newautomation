# Last updated on 
@US1225002
@MVP
@Plus
@Priority_1
@F181492
Feature: US1225002 - Terminated NPI/Provider Relationship

  @TC565830
  @Automated
  @Functional
  @US1225002
  Scenario: TC565830 - [RL0]
    Given I am the Entity Management Solution
    When an NPI to Provider relationship is terminated in NDB
    And the NPI to Provider relationship exists in Entity Management
    Then the Entity Management Solution is updated
    And the updated NPI to Provider relationship is visible in the Entity Management Solution

