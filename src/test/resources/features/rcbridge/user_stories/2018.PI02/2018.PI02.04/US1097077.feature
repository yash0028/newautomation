# Last updated on 
@CLM_UAT
@ETMA
@US1097077
@2018.PI02
@2018.PI02.04
@releasePast
@iterationPast
Feature: US1097077 - [Continued] Build External Data Query (ETMA)

  @TC493896
  @Manual
  @Functional
  @CLM_UAT
  @ETMA
  Scenario: TC493896 - [RL0] Validate external data query for ETMA
    Given UHC will need to provide Exari with ETMA table data
    When the Exari calls ETMA
    Then an external data query will return the requested data.

