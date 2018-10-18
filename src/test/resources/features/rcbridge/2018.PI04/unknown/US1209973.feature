# Last updated on 
@MVP+1
@US1209973
@2018.PI04
@F205008
@releasePresent
@iterationUnknown
Feature: US1209973 - NDB Contract Master Lookup API event trigger

  @TC565086
  @Automated
  @Functional
  @MVP+1
  @US1209973
  @2018.PI04
  Scenario: TC565086 - [RL0]
    Given the Exari / CLM>NDB contract master Lookup API payload data is correct
    When NDB receives the Search parameter data
    Then NDB will search and return back the valid contract master data for the search parameters requested.

