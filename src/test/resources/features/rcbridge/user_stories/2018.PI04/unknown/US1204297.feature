# Last updated on 
@Amrutha
@MVP+1
@US1204297
@2018.PI04
Feature: US1204297 - NDB Common Pricing Solution Lookup API

  @TC564504
  @Automated
  @Functional
  Scenario: TC564504 - [RL0]
    Given the Exari / CLM>NDB CPS Lookup API payload data is correct
    When NDB receives the Search parameter data
    Then NDB will search and return back the valid CPS data for the search parameters requested.

