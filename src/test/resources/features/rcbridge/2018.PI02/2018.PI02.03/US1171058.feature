# Last updated on 
@CLM_UAT
@ETMA
@US1171058
@2018.PI02
@2018.PI02.03
@releasePast
@iterationPast
Feature: US1171058 - [Unfinished] Build External Data Query to retrieve retroactive reason codes (ETMA)

  @TC565491
  @Manual
  @Functional
  @CLM_UAT
  @ETMA
  Scenario: TC565491 - [RL0] Validate ETMA RARC EDQ
    Given UHC will need to provide Exari with ETMA table data
    When the Exari calls ETMA
    Then an external data query will return the requested data.

