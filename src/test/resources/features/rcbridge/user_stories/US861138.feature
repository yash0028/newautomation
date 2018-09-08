# Last updated on 
@MVP
@CLM_UAT
@EXARI-11453
@US861138
Feature: US861138 - Export Entity Structure

  @TC564447
  @Automated
  @Functional
  Scenario: TC564447 - [RL0]
    Given I am a User with access to view and maintain Entity information
    When I want to view Entity Structure data outside of the Entity Management Solution
    Then I have the ability to export Entity Structure data

