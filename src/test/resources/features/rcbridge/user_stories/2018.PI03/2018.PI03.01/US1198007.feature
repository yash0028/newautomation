# Last updated on 
@US1198007
@2018.PI03
@2018.PI03.01
@MVP
@Plus
@Priority_1
@Parity
@F203766
Feature: US1198007 - Exari / CLM > NDB Common Pricing Solution Lookup API

  @TC564842
  @Automated
  @Functional
  @US1198007
  @2018.PI03
  @2018.PI03.01
  Scenario: TC564842 - [RL0]
    Given the Exari / CLM>NDB CPS Lookup API payload data is correct
    When NDB receives the Search parameter data
    Then NDB will search and return back the valid CPS data for the search parameters requested.

