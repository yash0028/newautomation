# Last updated on 2018-07-09T14:24:50.339Z
@MVP
@Plus
@Priority_1
@Parity
Feature: F203766 - Exari/ CLM >NDB Lookup API's - CF Team

  @2018.PI03
  @2018.PI03.01
  Scenario: US1198007
    Given the Exari / CLM>NDB CPS Lookup API payload data is correct
    When NDB receives the Search parameter data
    Then NDB will search and return back the valid CPS data for the search parameters requested.

  @2018.PI03
  @2018.PI03.01
  Scenario: US1197989
    Given the Exari / CLM>NDB contract master Lookup API payload data is correct
    When NDB receives the Search parameter data
    Then NDB will search and return back the valid contract master data for the search parameters requested.

