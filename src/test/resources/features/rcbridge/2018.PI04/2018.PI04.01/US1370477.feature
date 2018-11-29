# Last updated on 
@US1370477
@2018.PI04
@2018.PI04.01
@MVP
@Plus
@Priority_2
@Parity
@releasePast
@iterationPast
Feature: US1370477 - [Unfinished] Exari >NDB Facility/Ancillary - Medical Necessity API Java Layer

  @TC603984
  @Manual
  @Functional
  Scenario: TC603984 - [RL0]
    Given - The Facility contract provider(s) cancel is complete and correct within Exari
    When - The contract is included in the Exari Facility Contract ETL to NDB
    Then - NDB should cancel the provider(s) contract to the 'E' PNC contract screen successfully within NDB

