# Last updated on 2018-05-08T15:59:12.073Z
@MVP
Feature: F171127 - Exari> NDB Facility/Ancillary Contracting Payloads -  CF Team

  Scenario: US1030465
    Given The Facility contract provider(s) cancel is complete and correct within Exari
    When The contract is included in the Exari Facility Contract ETL to NDB
    Then NDB should cancel the provider(s) contract to the 'E' PNC contract screen successfully within NDB

  Scenario: US1028372
    Given The Facility contract is complete and correct within Exari
    When The contract is included in the Exari Facility Contract ETL to NDB
    Then NDB should load the Facility contract to the 'E' PNC contract screen successfully within NDB

