# Last updated on 
@CLM_UAT
@ETMA
@US1171055
@2018.PI02
Feature: US1171055 - [Unfinished] Build External Data Query (ETMA)

  @TC565506
  @Automated
  @Functional
  Scenario: TC565506 - [RL0]
    Given UHC will need to provide Exari with ETMA table data
    When the Exari calls ETMA
    Then an external data query will return the requested data.

