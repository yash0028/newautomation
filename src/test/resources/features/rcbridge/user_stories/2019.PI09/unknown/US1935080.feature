# Last updated on 
@US1935080
@2019.PI09
@releasePresent
@iterationUnknown
Feature: US1935080 - Run Performance Test in Stage env

  @TC909545
  @Manual
  @Functional
  Scenario: TC909545 - [RL0]
    Given a test contract exists in Exari stage env
    And a mock-exari service is available with a roster-update endpoint
    When running the performance test to install 4000 contract lines
    Then the results are recorded

  @TC909551
  @Manual
  @Functional
  Scenario: TC909551 - [RL1]
    Given a test contract exists in Exari stage env
    And a mock-exari service is available with a roster-update endpoint
    When running the performance test to cancel 4000 contract lines
    Then the results are recorded

