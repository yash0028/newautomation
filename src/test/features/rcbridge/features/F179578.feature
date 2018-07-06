# Last updated on 2018-07-05T16:17:52.911Z
@MVP
@Plus
@Priority_1
@Parity
Feature: F179578 - Exari>NDB Facility Medical Necessity Payload

  @2018.PI03
  Scenario: US1030520
    Given - The Facility contract provider(s) cancel is complete and correct within Exari
    When - The contract is included in the Exari Facility Contract ETL to NDB
    Then - NDB should cancel the provider(s) contract to the 'E' PNC contract screen successfully within NDB

  @2018.PI03
  Scenario: US1126513
    Given - The Facility contract provider(s) cancel is complete and correct within Exari
    When - The contract is included in the Exari Facility Contract ETL to NDB
    Then - NDB should cancel the provider(s) contract to the 'E' PNC contract screen successfully within NDB

