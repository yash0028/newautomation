# Last updated on 
@MVP
@US983405
@2018.PI01
Feature: US983405 - [Continued] Setup RC Bridge Automation Testing Component

  @TC408750
  @Automated
  @Acceptance
  Scenario: TC408750 - Setup Automation Testing Component
    Given I create a user story with at least one test case
    When I run RC-Bridge
    Then I have a feature file describing the user story's test cases

