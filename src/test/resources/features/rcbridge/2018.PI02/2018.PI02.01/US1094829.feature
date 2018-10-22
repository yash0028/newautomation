# Last updated on 
@CLM_UAT
@US1094829
@2018.PI02
@2018.PI02.01
@MVP
@PI02_Top3
@Parity
@F182742
@releasePast
@iterationPast
Feature: US1094829 - NDB API Creation – NDB Cross Functional Team

  @TC565300
  @Automated
  @Functional
  @CLM_UAT
  @US1094829
  @2018.PI02
  @2018.PI02.01
  Scenario: TC565300 - [RL0]
    Given The Physician contract is complete and correct within Exari
    When The contract is included in the Exari Physician Contract micro-service to NDB
    Then NDB should load the contract to the 'E' PNC contract screen successfully within NDB

