# Last updated on 
@MVP
@US933587
@2018.PI01
@2018.PI01.01
@MVP
@CLM_Exari
@F137837
Feature: US933587 - Setup Standard Configuration Settings

  @TC565860
  @Automated
  @Functional
  @MVP
  @US933587
  @2018.PI01
  @2018.PI01.01
  Scenario: TC565860 - [RL0]
    Given the Business Administrators provided Global Settings requirements to Exari,
    When the Exari Database Administrator evaluated these Global Setting requirements
    Then the Exari Database Administrator applied these Global Settings (Central Time Zone and English Language) to the server (as documented in the configuration specification).

