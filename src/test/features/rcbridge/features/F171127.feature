# Last updated on 2018-07-02T14:41:18.938Z
@MVP
@Plus
@Priority_1
Feature: F171127 - Exari> NDB Facility/Ancillary Contracting Payloads -  CF Team

  @2018.PI03
  Scenario: US1030465
    Given The Facility contract provider(s) add/cancel is complete and correct within Exari
    When The contract is included in the Exari Facility Contract payload to NDB
    Then NDB should process the add/cancel contract to the 'E' PNC contract screen successfully within NDB

