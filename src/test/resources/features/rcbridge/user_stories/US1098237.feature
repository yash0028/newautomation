# Last updated on 
@US1098237
Feature: US1098237 - Establish Daily Update Process

  @TC565815
  @Automated
  @Functional
  Scenario: TC565815 - [RL0]
    Given I am the Entity Management Solution
    When a DLGT CD assignment is updated in NDB
    Then the DLGT CD is updated in the Entity Management Solution
