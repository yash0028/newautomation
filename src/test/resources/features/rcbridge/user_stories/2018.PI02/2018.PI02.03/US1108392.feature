# Last updated on 
@CLM_UAT
@US1108392
@2018.PI02
@2018.PI02.03
Feature: US1108392 - [Continued] NDB API Creation – NDB Cross Functional Team - Part 2

  @TC565408
  @Automated
  @Functional
  Scenario: TC565408 - [RL0]
    Given The Physician contract is complete and correct within Exari
    When The contract is included in the Exari Physician Contract micro-service to NDB
    Then NDB should load the contract to the 'E' PNC contract screen successfully within NDB

