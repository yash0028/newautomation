# Last updated on 
@CLM_UAT
@ETMA
@US1171055
@2018.PI02
@2018.PI02.03
@MVP
@PI02_Top3
@Plus
@Parity
@releasePast
@iterationPast
Feature: US1171055 - [Unfinished] Build External Data Query (ETMA)

  @TC565506
  @Manual
  @Functional
  @CLM_UAT
  @ETMA
  Scenario: TC565506 - [RL0] Validation of ETMA EDQ
    Given UHC will need to provide Exari with ETMA table data
    When the Exari calls ETMA
    Then an external data query will return the requested data.

