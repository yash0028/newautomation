# Last updated on 
@CLM_UAT
@ETMA
@US1129434
@2018.PI02
Feature: US1129434 - Error - Specialty Indicator or Org Type not found for given Provider on Roster

  @TC564420
  @Automated
  @Functional
  Scenario: TC564420 - [RL0] Happy path validation
    Given the providers Specialty codes "53ABC, 54ABC, 55ABC" and paper types "MGA, ABC123, SPA" are passed to the service
    When the Specialty Codes are not found in ETMA
    Then service will return a a "False" value for each specialty code and paper type combination

  @TC564421
  @Automated
  @Functional
  Scenario: TC564421 - [RL1] Bad path validation
    Given the providers Org Types "53ABC, 54ABC, 55ABC" and paper types "MGA, ABC123, SPA" are passed to the service
    When the Org Types are not found in ETMA
    Then service will return a a "False" value for each org type and paper type combination

