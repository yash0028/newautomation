# Last updated on 2018-04-23T15:19:18.510Z
@MVP
@CLM_Exari
Feature: F137837 - Administer Global Settings

  @MVP
  @2018.PI01
  @2018.PI01.01
  Scenario: US933587
    Given the Business Administrators provided Global Settings requirements to Exari,
    When the Exari Database Administrator evaluated these Global Setting requirements
    Then the Exari Database Administrator applied these Global Settings (Central Time Zone and English Language) to the server (as documented in the configuration specification).

