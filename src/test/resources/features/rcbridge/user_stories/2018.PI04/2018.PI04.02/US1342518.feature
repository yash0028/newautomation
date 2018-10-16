# Last updated on 
@US1342518
@2018.PI04
@2018.PI04.02
@MVP
@Plus
@Priority_2
@Parity
@F179578
Feature: US1342518 - [QE] Exari >NDB Facility/Ancillary - Medical Necessity API Mainframe Layer

  @TC590675
  @Manual
  @Functional
  @US1342518
  @2018.PI04
  @2018.PI04.02
  Scenario: TC590675 - [RL0]
    Given - The Facility contract provider(s) cancel is complete and correct within Exari
    When - The contract is included in the Exari Facility Contract ETL to NDB
    Then - NDB should cancel the provider(s) contract to the 'E' PNC contract screen successfully within NDB

