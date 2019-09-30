# Last updated on 
@US1904315
@2019.PI08
@2019.PI08.02
@releasePast
@iterationPast
Feature: US1904315 - Run Performance Test in Test env

  @TC909483
  @Manual
  @Functional
  Scenario: TC909483 - [RL0]
    Given a test contract exists in Exari test env
    And a mock-exari service is available with a roster-update endpoint
    When running the performance test to install 4000 contract lines
    Then the results are recorded

