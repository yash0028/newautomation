# Last updated on 2018-05-02T15:36:41.856Z
@MVP
Feature: F182837 - Exari>NDB Physician Contracting Loading - Payload

  @2018.PI01
  @2018.PI01.05
  Scenario: US1072917
    Given The Physician contract is complete and correct within Exari
    When The contract is included in the Exari Physician Contract ETL to NDB
    Then NDB should load the contract to the 'E' PNC contract screen successfully within NDB

