# Last updated on 
@MVP
@Plus
@Priority_1
@Parity
@F203766
Feature: F203766 - Exari/ CLM >NDB Lookup API's - CF Team

  @US1198007
  @2018.PI03
  Scenario: US1198007 - Exari / CLM > NDB Common Pricing Solution Lookup API
    Given the Exari / CLM>NDB CPS Lookup API payload data is correct
    When NDB receives the Search parameter data
    Then NDB will search and return back the valid CPS data for the search parameters requested.

  @US1197989
  @2018.PI03
  Scenario: US1197989 - Exari / CLM > NDB Contract Master Lookup API
    Given the Exari / CLM>NDB contract master Lookup API payload data is correct
    When NDB receives the Search parameter data
    Then NDB will search and return back the valid contract master data for the search parameters requested.

