# Last updated on 
@MVP
@CLM_UAT
@US1149316
@2018.PI03
Feature: US1149316 - Entity Type Conflict - Health Organization Umbrella and Organizational Unit

  @TC565286
  @Automated
  @Functional
  Scenario: TC565286 - [RL0]
    Given I am the Entity Management Solution
    When a User is selecting an Entity Type
    Then the User is not allowed to select both Health Organization Umbrella and Organizational Unit for the same Entity

