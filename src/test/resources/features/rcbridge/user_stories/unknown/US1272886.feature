# Last updated on 
@US1272886
Feature: US1272886 - [Spike] Investigate Production Data

  @TC565288
  @Automated
  @Functional
  Scenario: TC565288 - [RL0]
    Given the integrations have datasources
    When the integrations are checked for production data
    Then the production data should be identified

