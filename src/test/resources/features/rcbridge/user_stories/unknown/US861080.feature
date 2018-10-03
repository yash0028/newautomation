# Last updated on 
@US861080
@Plus
@Priority_1
@F137918
Feature: US861080 - Make Entity Data Available

  @TC565725
  @Automated
  @Functional
  @US861080
  Scenario: TC565725 - [RL0]
    Given I am the Entity Management Solution
    When a User adds or updates Entity information
    Then the Entity information is made available to consuming applications

