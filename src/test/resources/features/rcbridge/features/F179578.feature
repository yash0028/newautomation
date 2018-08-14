# Last updated on 
@MVP
@Plus
@Priority_1
@Parity
@F179578
Feature: F179578 - Exari>NDB Facility Medical Necessity Payload - CF Team

  @US1030520
  @2018.PI03
  Scenario: US1030520 - Exari >NDB Facility/Ancillary - Medical Necessity - Analysis SPIKE
    Given - The Facility contract provider(s) cancel is complete and correct within Exari
    When - The contract is included in the Exari Facility Contract ETL to NDB
    Then - NDB should cancel the provider(s) contract to the 'E' PNC contract screen successfully within NDB

  @US1126513
  @2018.PI03
  Scenario: US1126513 - Exari >NDB Facility/Ancillary - Medical Necessity API Java Layer
    Given - The Facility contract provider(s) cancel is complete and correct within Exari
    When - The contract is included in the Exari Facility Contract ETL to NDB
    Then - NDB should cancel the provider(s) contract to the 'E' PNC contract screen successfully within NDB

  @US1207489
  @2018.PI03
  Scenario: US1207489 - Exari >NDB Facility/Ancillary - Medical Necessity API Mainframe Layer
    Given - The Facility contract provider(s) cancel is complete and correct within Exari
    When - The contract is included in the Exari Facility Contract ETL to NDB
    Then - NDB should cancel the provider(s) contract to the 'E' PNC contract screen successfully within NDB

