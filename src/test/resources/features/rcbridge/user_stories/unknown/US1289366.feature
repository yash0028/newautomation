# Last updated on 
@RC_invalid
@US1289366
@releaseUnknown
@iterationUnknown
Feature: US1289366 - Create multi-Contract Config Summary web page template

  @TC616426
  @Manual
  @Functional
  @RC_invalid
  Scenario: TC616426 - [RL0]
    Given multiple contract configuration summary records exist
    When a request is initiated to access the records
    Then the records are displayed using a predefined template layout

