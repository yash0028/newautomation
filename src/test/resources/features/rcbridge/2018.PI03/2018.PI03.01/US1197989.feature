# Last updated on
@US1197989
@2018.PI03
@2018.PI03.01
@MVP
@Plus
@Priority_1
@Parity
@F203766
@releasePast
@iterationPast
Feature: US1197989 - Exari / CLM > NDB Contract Master Lookup API

  @TC565459
  @Automated
  @Functional
  @US1197989
  @2018.PI03
  @2018.PI03.01
  Scenario: TC565459 - [RL0]
    Given the Exari / CLM>NDB contract master Lookup API payload data is correct
    When NDB receives the Search parameter data
    Then NDB will search and return back the valid contract master data for the search parameters requested.

