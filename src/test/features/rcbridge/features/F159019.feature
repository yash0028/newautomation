# Last updated on 2018-05-08T15:58:38.113Z
@MVP
Feature: F159019 - Exari>NDB Physician Contracting Loading - CF Team

  @2018.PI01
  @2018.PI01.05
  Scenario: US1060069
    Given The Physician contract is complete and correct within Exari
    When The contract is included in the Exari Physician Contract micro-service to NDB
    Then NDB should load the contract to the 'E' PNC contract screen successfully within NDB

  @2018.PI01
  @2018.PI01.04
  Scenario: US1074216
    Given The Physician contract is complete and correct within Exari
    When The contract is included in the Exari Physician Contract micro-service to NDB
    Then NDB should load the contract to the 'E' PNC contract screen successfully within NDB

  @2018.PI01
  @2018.PI01.04
  Scenario: US1016410
    Given The Physician contract is complete and correct within Exari
    When The contract is included in the Exari Physician Contract ETL to NDB
    Then NDB should load the contract to the 'E' PNC contract screen successfully within NDB

  @2018.PI01
  @2018.PI01.05
  Scenario: US1094831
    Given The Physician contract is complete and correct within Exari
    When The contract is included in the Exari Physician Contract micro-service to NDB
    Then NDB should load the contract to the 'E' PNC contract screen successfully within NDB

