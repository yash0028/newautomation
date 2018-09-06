# Last updated on 
@CLM_UAT
@ETMA
@US1169960
@2018.PI02
Feature: US1169960 - [Continued] Build External Data Query to retrieve retroactive reason codes (ETMA)

  @TC564496
  @Automated
  @Functional
  Scenario: TC564496 - [RL0]
    Given UHC will need to provide Exari with ETMA table data
    When the Exari calls ETMA
    Then an external data query will return the requested data.

  @TC493897
  @Manual
  @Functional
  Scenario: TC493897 - Validate retro reason code external data query (ETMA)
    Given UHC will need to provide Exari with ETMA table data
    When the Exari calls ETMA
    Then an external data query will return the requested data.

