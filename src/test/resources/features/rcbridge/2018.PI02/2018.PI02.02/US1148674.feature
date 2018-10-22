# Last updated on
@CLM_UAT
@US1148674
@2018.PI02
@2018.PI02.02
@MVP
@PI02_Top3
@Parity
@F182742
@releasePast
@iterationPast
Feature: US1148674 - [Unfinished] NDB API Creation – NDB Cross Functional Team - Part 2

  @TC565156
  @Automated
  @Functional
  @CLM_UAT
  @US1148674
  @2018.PI02
  @2018.PI02.02
  Scenario: TC565156 - [RL0]
    Given The Physician contract is complete and correct within Exari
    When The contract is included in the Exari Physician Contract micro-service to NDB
    Then NDB should load the contract to the 'E' PNC contract screen successfully within NDB

