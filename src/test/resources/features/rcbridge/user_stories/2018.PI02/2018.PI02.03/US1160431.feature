# Last updated on 
@CLM_UAT
@US1160431
@2018.PI02
@2018.PI02.03
@MVP
@PI02_Top3
@Parity
@F182742
Feature: US1160431 - NDB API Creation – NDB Cross Functional Team - Contract Master

  @TC565042
  @Automated
  @Functional
  @CLM_UAT
  @US1160431
  @2018.PI02
  @2018.PI02.03
  Scenario: TC565042 - [RL0]
    Given The Physician contract is complete and correct within Exari
    When The contract is included in the Exari Physician Contract micro-service to NDB
    Then NDB should load the contract to the 'E' PNC contract screen successfully within NDB

