# Last updated on 2018-06-29T15:08:07.439Z
@MVP
@Plus
@Priority_1
Feature: F184552 - Migrate BIC / TIN Aggregation / Umbrella Entities

  @MVP
  @CLM_UAT
  @2018.PI03
  Scenario: US1096155
    Given I am a User with access to maintain Entity information
    When I want to view an Entity with a specific characteristic previously located in BIC
    Then I can view the Entity with the specific characteristic in the Entity Management Solution

  @MVP
  @2018.PI03
  Scenario: US1096162
    Given I am a User with access to maintain Entity information
    When I name an Umbrella Entity in the Entity Management Solution
    Then I must use the official Legal name of the Entity

  @MVP
  @CLM_UAT
  @2018.PI03
  Scenario: US1096151
    Given I am a User with access to maintain Entity information
    When I view an Umbrella Entity in the Entity Management Solution
    Then all Organizational Unit Entities from BIC roll up to the correct Umbrella Entity in the Entity Management Solution

  @MVP
  @CLM_UAT
  @EXARI-11399
  @2018.PI03
  Scenario: US1096149
    Given I am a User with access to maintain Entity information
    When I need to maintain a BIC Owned TIN
    Then I maintain the BIC Owned TIN in the Entity Management Solution

  @MVP
  @CLM_UAT
  @EXARI-11266
  @2018.PI03
  Scenario: US1096156
    Given I am a User with access to maintain Entity information
    When I want to validate an Entity previously located in BIC according to a Validation Schedule
    Then I can validate in the Entity Management Solution according to a Validation Schedule

  @MVP
  @CLM_UAT
  @2018.PI03
  Scenario: US1096153
    Given I am a User with access to maintain Entity information
    When I want to view a Reporting Entity previously located in BIC
    Then I can view the Reporting Entity in the Entity Management Solution

  @MVP
  @CLM_UAT
  @2018.PI03
  Scenario: US1096158
    Given I am a User with access to maintain Entity information
    When I want to view and maintain aggregated TINs previously located in BIC
    Then I can view and maintain aggregated TINs in the Entity Management Solution

  @MVP
  @CLM_UAT
  @2018.PI03
  Scenario: US1096161
    Given I am a User with access to maintain Entity information
    When a new contract is added to an Entity
    And an existing contract is maintained on an Entity
    Then the provider to Entity relationships for the affected TINs are migrated to the Entity Management Solution

