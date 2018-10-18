# Last updated on 
@US1289366
@2018.PI04
@releasePresent
@iterationUnknown
Feature: US1289366 - Create multi-Contract Config Summary web page template

  @TC616426
  @Manual
  @Functional
  @US1289366
  @2018.PI04
  Scenario: TC616426 - [RL0]
    Given multiple contract configuration summary records exist
    When a request is initiated to access the records
    Then the records are displayed using a predefined template layout

