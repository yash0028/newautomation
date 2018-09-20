# Last updated on 
@US1198007
@2018.PI03
@2018.PI03.01
Feature: US1198007 - Exari / CLM > NDB Common Pricing Solution Lookup API

  @TC564842
  @Automated
  @Functional
  Scenario: TC564842 - [RL0]
    Given the Exari / CLM>NDB CPS Lookup API payload data is correct
    When NDB receives the Search parameter data
    Then NDB will search and return back the valid CPS data for the search parameters requested.

