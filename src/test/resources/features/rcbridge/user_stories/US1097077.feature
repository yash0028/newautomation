# Last updated on 
@CLM_UAT
@ETMA
@US1097077
@2018.PI02
Feature: US1097077 - [Continued] Build External Data Query (ETMA)

  @TC564905
  @Automated
  @Functional
  Scenario: TC564905 - [RL0]
    Given UHC will need to provide Exari with ETMA table data
    When the Exari calls ETMA
    Then an external data query will return the requested data.

  @TC493896
  @Manual
  @Functional
  Scenario: TC493896 - Validate external data query for ETMA
    Given UHC will need to provide Exari with ETMA table data
    When the Exari calls ETMA
    Then an external data query will return the requested data.

