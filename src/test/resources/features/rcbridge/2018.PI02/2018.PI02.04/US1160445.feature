# Last updated on 
@CLM_UAT
@US1160445
@2018.PI02
@2018.PI02.04
@MVP
@PI02_Top3
@Parity
@F182742
@releasePast
@iterationPast
Feature: US1160445 - [Continued] NDB Driver Module – NDB Cross Functional Team - Contract Master

  @TC565734
  @Automated
  @Functional
  @CLM_UAT
  @US1160445
  @2018.PI02
  @2018.PI02.04
  Scenario: TC565734 - [RL0]
    Given The Physician contract is complete and correct within Exari
    When The contract is included in the Exari Physician Contract micro-service to NDB
    Then NDB should load the contract to the 'E' PNC contract screen successfully within NDB
