# Last updated on 
@MVP
@Plus
@Priority_1
@F184552
Feature: F184552 - Exari EM - Migrate BIC / TIN Aggregation / Umbrella Entities

  @MVP
  @CLM_UAT
  @US1096155
  Scenario: US1096155 - Flag Entities with Special Characteristics
    Given I am a User with access to maintain Entity information
    When I want to view an Entity with a specific characteristic previously located in BIC
    Then I can view the Entity with the specific characteristic in the Entity Management Solution

  @MVP
  @US1096162
  Scenario: US1096162 - Establish Naming Convention
    Given I am a User with access to maintain Entity information
    When I name an Umbrella Entity in the Entity Management Solution
    Then I must use the official Legal name of the Entity

  @MVP
  @CLM_UAT
  @US1096151
  Scenario: US1096151 - Migrate BIC Entity Components
    Given I am a User with access to maintain Entity information
    When I view an Umbrella Entity in the Entity Management Solution
    Then all Organizational Unit Entities from BIC roll up to the correct Umbrella Entity in the Entity Management Solution

  @MVP
  @CLM_UAT
  @EXARI-11399
  @US1096149
  Scenario: US1096149 - Migrate Owned TINs
    Given I am a User with access to maintain Entity information
    When I need to maintain a BIC Owned TIN
    Then I maintain the BIC Owned TIN in the Entity Management Solution

  @MVP
  @CLM_UAT
  @EXARI-11266
  @US1096156
  Scenario: US1096156 - Establish Validation Schedule
    Given I am a User with access to maintain Entity information
    When I want to validate an Entity previously located in BIC according to a Validation Schedule
    Then I can validate in the Entity Management Solution according to a Validation Schedule

  @MVP
  @CLM_UAT
  @US1096153
  Scenario: US1096153 - Create Reporting Entities
    Given I am a User with access to maintain Entity information
    When I want to view a Reporting Entity previously located in BIC
    Then I can view the Reporting Entity in the Entity Management Solution

  @MVP
  @CLM_UAT
  @US1096158
  Scenario: US1096158 - Establish TIN Aggregation Maintenance
    Given I am a User with access to maintain Entity information
    When I want to view and maintain aggregated TINs previously located in BIC
    Then I can view and maintain aggregated TINs in the Entity Management Solution

  @MVP
  @CLM_UAT
  @US1096161
  Scenario: US1096161 - Establish Provider Relationship Maintenance
    Given I am a User with access to maintain Entity information
    When a new contract is added to an Entity
    And an existing contract is maintained on an Entity
    Then the provider to Entity relationships for the affected TINs are migrated to the Entity Management Solution

