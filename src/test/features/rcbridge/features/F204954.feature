# Last updated on 2018-07-06T14:15:04.545Z
@MVP
@Plus
@Priority_1
@Parity
Feature: F204954 - Integration Services - NDB UNET/COSMOS Contract Master API's

  @MVP+1
  @2018.PI03
  @2018.PI03.01
  Scenario: US1204285
    Given the Exari / CLM>NDB contract master Lookup API payload data is correct
    When NDB receives the Search parameter data
    Then NDB will search and return back the valid contract master data for the search parameters requested.

  @2018.PI03
  @2018.PI03.01
  Scenario: US1204297
    Given the Exari / CLM>NDB CPS Lookup API payload data is correct
    When NDB receives the Search parameter data
    Then NDB will search and return back the valid CPS data for the search parameters requested.

