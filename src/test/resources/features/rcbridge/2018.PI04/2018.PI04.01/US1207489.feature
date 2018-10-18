# Last updated on
@US1207489
@2018.PI04
@2018.PI04.01
@MVP
@Plus
@Priority_2
@Parity
@F179578
@releasePresent
@iterationPast
Feature: US1207489 - Exari >NDB Facility/Ancillary - Medical Necessity API Mainframe Layer

  @TC564982
  @Automated
  @Functional
  @US1207489
  @2018.PI04
  @2018.PI04.01
  Scenario: TC564982 - [RL0]
    Given - The Facility contract provider(s) cancel is complete and correct within Exari
    When - The contract is included in the Exari Facility Contract ETL to NDB
    Then - NDB should cancel the provider(s) contract to the 'E' PNC contract screen successfully within NDB

