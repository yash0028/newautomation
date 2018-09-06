# Last updated on 
@Charlie
@US1272911
@2018.PI03
Feature: US1272911 - Fix Fortify Issues

  @TC564735
  @Manual
  @Functional
  Scenario: TC564735 - [RL0]
    Given services that are maintained by CLM Team 1
    When Fortify reports high-end critical issues on a service
    Then a developer needs to fix the high-end critical issues

