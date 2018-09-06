# Last updated on 
@US1030520
@2018.PI03
Feature: US1030520 - Exari >NDB Facility/Ancillary - Medical Necessity - Analysis SPIKE

  @TC564962
  @Automated
  @Functional
  Scenario: TC564962 - [RL0]
    Given - The Facility contract provider(s) cancel is complete and correct within Exari
    When - The contract is included in the Exari Facility Contract ETL to NDB
    Then - NDB should cancel the provider(s) contract to the 'E' PNC contract screen successfully within NDB

