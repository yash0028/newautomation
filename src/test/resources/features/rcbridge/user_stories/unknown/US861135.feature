# Last updated on 
@MVP
@CLM_UAT
@US861135
@F207084
Feature: US861135 - Export Entity Summary

  @TC565937
  @Automated
  @Functional
  @MVP
  @CLM_UAT
  @US861135
  Scenario: TC565937 - [RL0]
    Given I am a User with access to view and maintain Entity information
    When I want to view Entity Summary data outside of the Entity Management Solution
    Then I have the ability to export Entity Summary data

