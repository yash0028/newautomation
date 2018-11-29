# Last updated on 
@US1030520
@2018.PI04
@2018.PI04.01
@MVP
@Plus
@Priority_2
@Parity
@releasePast
@iterationPast
Feature: US1030520 - [SPIKE] Exari >NDB Facility/Ancillary - Medical Necessity - Analysis

  @TC564962
  @Automated
  @Functional
  Scenario: TC564962 - [RL0]
    Given - The Facility contract provider(s) cancel is complete and correct within Exari
    When - The contract is included in the Exari Facility Contract ETL to NDB
    Then - NDB should cancel the provider(s) contract to the 'E' PNC contract screen successfully within NDB

