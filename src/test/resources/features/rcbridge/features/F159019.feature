# Last updated on 
@MVP
@F159019
Feature: F159019 - Exari>NDB Physician Contracting Loading - CF Team

  @US1060069
  @2018.PI01
  Scenario: US1060069 - [Continued] SPIKE - Analysis around NDB API Creation – NDB Cross Functional Team
    Given The Physician contract is complete and correct within Exari
    When The contract is included in the Exari Physician Contract micro-service to NDB
    Then NDB should load the contract to the 'E' PNC contract screen successfully within NDB

  @US1074216
  @2018.PI01
  Scenario: US1074216 - [Unfinished] SPIKE - Analysis around NDB API Creation – NDB Cross Functional Team
    Given The Physician contract is complete and correct within Exari
    When The contract is included in the Exari Physician Contract micro-service to NDB
    Then NDB should load the contract to the 'E' PNC contract screen successfully within NDB

  @US1016410
  @2018.PI01
  Scenario: US1016410 - Exari>NDB Physician payload data
    Given The Physician contract is complete and correct within Exari
    When The contract is included in the Exari Physician Contract ETL to NDB
    Then NDB should load the contract to the 'E' PNC contract screen successfully within NDB

  @US1094831
  @2018.PI01
  Scenario: US1094831 - NDB API Creation – NDB Cross Functional Team
    Given The Physician contract is complete and correct within Exari
    When The contract is included in the Exari Physician Contract micro-service to NDB
    Then NDB should load the contract to the 'E' PNC contract screen successfully within NDB

