# Last updated on 
@MVP
@CLM_UAT
@US1096161
Feature: US1096161 - Establish Provider Relationship Maintenance

  @TC565279
  @Automated
  @Functional
  Scenario: TC565279 - [RL0]
    Given I am a User with access to maintain Entity information
    When a new contract is added to an Entity
    And an existing contract is maintained on an Entity
    Then the provider to Entity relationships for the affected TINs are migrated to the Entity Management Solution

