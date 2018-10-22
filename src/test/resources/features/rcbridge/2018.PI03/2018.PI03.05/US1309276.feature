# Last updated on
@US1309276
@2018.PI03
@2018.PI03.05
@releasePast
@iterationPast
Feature: US1309276 - Debug OAuth issue with external library

  @TC569177
  @Manual
  @Functional
  @US1309276
  @2018.PI03
  @2018.PI03.05
  Scenario: TC569177 - [RL0] Validate Fix of OAuth issue
    Given an issue with OAuth in the external library
    When using the external data queries
    Then the connection is successful
    And our services communicate data back to Exari

