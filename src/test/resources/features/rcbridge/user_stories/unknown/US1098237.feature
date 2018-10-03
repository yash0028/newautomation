# Last updated on 
@US1098237
@Non_MVP
@F184554
Feature: US1098237 - Establish Daily Update Process

  @TC565815
  @Automated
  @Functional
  @US1098237
  Scenario: TC565815 - [RL0]
    Given I am the Entity Management Solution
    When a DLGT CD assignment is updated in NDB
    Then the DLGT CD is updated in the Entity Management Solution

