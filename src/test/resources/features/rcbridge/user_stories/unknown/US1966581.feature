# Last updated on 
@US1966581
@releaseUnknown
@iterationUnknown
Feature: US1966581 - Monitoring kafka with Datadog- All Env's

  @TC927569
  @Manual
  @Functional
  Scenario: TC927569 - [RL0]
    Given a service exists,
    When it gets configured in datadog
    Then alert & notification is enabled in datadog

