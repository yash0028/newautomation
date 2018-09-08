# Last updated on 
@MVP
@CLM_UAT
@US1096158
Feature: US1096158 - Establish TIN Aggregation Maintenance

  @TC565568
  @Automated
  @Functional
  Scenario: TC565568 - [RL0]
    Given I am a User with access to maintain Entity information
    When I want to view and maintain aggregated TINs previously located in BIC
    Then I can view and maintain aggregated TINs in the Entity Management Solution

