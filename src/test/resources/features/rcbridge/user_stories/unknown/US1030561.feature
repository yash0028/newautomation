# Last updated on 
@US1030561
Feature: US1030561 - Exari >NDB Facility/Ancillary - Terminate Medical Necessity Amendment Contract

  @TC565192
  @Automated
  @Functional
  Scenario: TC565192 - [RL0]
    Given - The Facility contract provider(s) cancel is complete and correct within Exari
    When - The contract is included in the Exari Facility Contract ETL to NDB
    Then - NDB should cancel the provider(s) contract to the 'E' PNC contract screen successfully within NDB

