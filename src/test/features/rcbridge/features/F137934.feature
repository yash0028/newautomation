# Last updated on 2018-06-25T19:10:36.797Z
@MVP
@Plus
@PI03
@Priority_1
Feature: F137934 - Export Entity Data

  @MVP
  @CLM_UAT
  @2018.PI03
  Scenario: US861135
    Given I am a User with access to view and maintain Entity information
    When I want to view Entity Summary data outside of the Entity Management Solution
    Then I have the ability to export Entity Summary data

  @MVP
  @CLM_UAT
  @2018.PI03
  Scenario: US1134378
    Given I am a User with access to view and maintain Entity information
    When I want to view Entity Relationship data outside of the Entity Management Solution
    Then I have the ability to export Entity Relationship data

  @MVP
  @CLM_UAT
  @2018.PI03
  Scenario: US861136
    Given I am a User with access to view and maintain Entity information
    When I want to view Entity Detail data outside of the Entity Management Solution
    Then I have the ability to export Entity Detail data

  @MVP
  @CLM_UAT
  @2018.PI03
  Scenario: US861138
    Given I am a User with access to view and maintain Entity information
    When I want to view Entity Structure data outside of the Entity Management Solution
    Then I have the ability to export Entity Structure data

