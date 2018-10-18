# Last updated on 
@US1060069
@2018.PI01
@2018.PI01.05
@MVP
@F159019
@releasePast
@iterationPast
Feature: US1060069 - [Continued] SPIKE - Analysis around NDB API Creation – NDB Cross Functional Team

  @TC565264
  @Automated
  @Functional
  @US1060069
  @2018.PI01
  @2018.PI01.05
  Scenario: TC565264 - [RL0]
    Given The Physician contract is complete and correct within Exari
    When The contract is included in the Exari Physician Contract micro-service to NDB
    Then NDB should load the contract to the 'E' PNC contract screen successfully within NDB

