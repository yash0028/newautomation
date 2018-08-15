# Last updated on 
@MVP
@Plus
@Priority_1
@F171127
Feature: F171127 - Exari> NDB Facility/Ancillary Contracting Payloads -  CF Team

  @US1207401
  @2018.PI03
  Scenario: US1207401 - SPIKE: Exari> NDB Facility/Ancillary Payload - Layout data attributes Analysis
    GivenThe Facility contract is complete and correct within Exari
    When The contract is included in the Exari Facility Contract payload to NDB
    Then NDB should build the the Staging screen record/ PNC Screen Record as applicable.

