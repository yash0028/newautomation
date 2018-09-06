# Last updated on 
@CLM_UAT
@US1094829
@2018.PI02
Feature: US1094829 - NDB API Creation – NDB Cross Functional Team

  @TC565300
  @Automated
  @Functional
  Scenario: TC565300 - [RL0]
    Given The Physician contract is complete and correct within Exari
    When The contract is included in the Exari Physician Contract micro-service to NDB
    Then NDB should load the contract to the 'E' PNC contract screen successfully within NDB

