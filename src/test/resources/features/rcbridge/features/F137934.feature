# Last updated on 
@MVP
@Plus
@PI03
@Priority_1
@F137934
Feature: F137934 - Exari EM - Export Entity Data

  @MVP
  @CLM_UAT
  @EXARI-11453
  @US1134378
  @2018.PI03
  Scenario: US1134378 - Export Entity Relationships
    Given I am a User with access to view and maintain Entity information
    When I want to view Entity Relationship data outside of the Entity Management Solution
    Then I have the ability to export Entity Relationship data

  @MVP
  @CLM_UAT
  @EXARI-11453
  @US861136
  @2018.PI03
  Scenario: US861136 - Export Entity Detail
    Given I am a User with access to view and maintain Entity information
    When I want to view Entity Detail data outside of the Entity Management Solution
    Then I have the ability to export Entity Detail data

  @MVP
  @CLM_UAT
  @EXARI-11453
  @US861138
  @2018.PI03
  Scenario: US861138 - Export Entity Structure
    Given I am a User with access to view and maintain Entity information
    When I want to view Entity Structure data outside of the Entity Management Solution
    Then I have the ability to export Entity Structure data

