# Last updated on 
@US861076
@Plus
@Priority_1
@F137918
Feature: US861076 - Acquire Entity Data from existing Sources

  @TC565457
  @Automated
  @Functional
  @US861076
  Scenario: TC565457 - [RL0]
    Given I am the Entity Management Solution
    When an existing source contains Entity data
    Then I have the ability to acquire that Entity data from the existing source

