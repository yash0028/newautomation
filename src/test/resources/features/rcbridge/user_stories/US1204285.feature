# Last updated on 
@Prateek
@MVP+1
@US1204285
@2018.PI03
Feature: US1204285 - Implement NDB Contract Master Lookup API

  @CLM_UAT
  @TC561389
  @Manual
  @Acceptance
  Scenario: TC561389 - TC-01_validate NDB contract Master lookup API
    Given the Exari / CLM>NDB contract master Lookup API payload data is correct
    When NDB receives the Search parameter data
    Then NDB will search and return back the valid contract master data for the search parameters requested.

