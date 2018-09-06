# Last updated on 
@MVP
@CLM_UAT
@EXARI-11453
@US861136
@2018.PI03
Feature: US861136 - Export Entity Detail

  @TC565159
  @Automated
  @Functional
  Scenario: TC565159 - [RL0]
    Given I am a User with access to view and maintain Entity information
    When I want to view Entity Detail data outside of the Entity Management Solution
    Then I have the ability to export Entity Detail data

