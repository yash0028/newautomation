# Last updated on 
@CLM_UAT
@US1169107
@2018.PI02
@2018.PI02.03
Feature: US1169107 - [Unfinished] NDB Driver Module – NDB Cross Functional Team - Contract Master

  @TC565643
  @Automated
  @Functional
  Scenario: TC565643 - [RL0]
    Given The Physician contract is complete and correct within Exari
    When The contract is included in the Exari Physician Contract micro-service to NDB
    Then NDB should load the contract to the 'E' PNC contract screen successfully within NDB

