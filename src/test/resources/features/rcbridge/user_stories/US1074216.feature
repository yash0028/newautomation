# Last updated on 
@US1074216
@2018.PI01
Feature: US1074216 - [Unfinished] SPIKE - Analysis around NDB API Creation – NDB Cross Functional Team

  @TC565448
  @Automated
  @Functional
  Scenario: TC565448 - [RL0]
    Given The Physician contract is complete and correct within Exari
    When The contract is included in the Exari Physician Contract micro-service to NDB
    Then NDB should load the contract to the 'E' PNC contract screen successfully within NDB
