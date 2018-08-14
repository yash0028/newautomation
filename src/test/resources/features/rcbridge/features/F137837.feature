# Last updated on 
@MVP
@CLM_Exari
@F137837
Feature: F137837 - Administer Global Settings

  @MVP
  @US933587
  @2018.PI01
  Scenario: US933587 - Setup Standard Configuration Settings
    Given the Business Administrators provided Global Settings requirements to Exari,
    When the Exari Database Administrator evaluated these Global Setting requirements
    Then the Exari Database Administrator applied these Global Settings (Central Time Zone and English Language) to the server (as documented in the configuration specification).

