# Last updated on 
@US1094831
@2018.PI01
Feature: US1094831 - NDB API Creation – NDB Cross Functional Team

  @TC564677
  @Automated
  @Functional
  Scenario: TC564677 - [RL0]
    Given The Physician contract is complete and correct within Exari
    When The contract is included in the Exari Physician Contract micro-service to NDB
    Then NDB should load the contract to the 'E' PNC contract screen successfully within NDB

