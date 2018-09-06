# Last updated on 
@MVP
@CLM_UAT
@US1096153
@2018.PI03
Feature: US1096153 - Create Reporting Entities

  @TC564390
  @Automated
  @Functional
  Scenario: TC564390 - [RL0]
    Given I am a User with access to maintain Entity information
    When I want to view a Reporting Entity previously located in BIC
    Then I can view the Reporting Entity in the Entity Management Solution

