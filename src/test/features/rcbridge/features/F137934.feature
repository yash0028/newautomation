# Last updated on 2018-07-09T14:50:20.542Z
@MVP
@Plus
@PI03
@Priority_1
Feature: F137934 - Exari EM - Export Entity Data

  @MVP
  @CLM_UAT
  @EXARI-11453
  @2018.PI03
  Scenario: US1134378
    Given I am a User with access to view and maintain Entity information
    When I want to view Entity Relationship data outside of the Entity Management Solution
    Then I have the ability to export Entity Relationship data

  @MVP
  @CLM_UAT
  @EXARI-11453
  @2018.PI03
  Scenario: US861136
    Given I am a User with access to view and maintain Entity information
    When I want to view Entity Detail data outside of the Entity Management Solution
    Then I have the ability to export Entity Detail data

  @MVP
  @CLM_UAT
  @EXARI-11453
  @2018.PI03
  Scenario: US861138
    Given I am a User with access to view and maintain Entity information
    When I want to view Entity Structure data outside of the Entity Management Solution
    Then I have the ability to export Entity Structure data

