# Last updated on 
@US1949234
@releaseUnknown
@iterationUnknown
Feature: US1949234 - Enable endpoint monitoring in Datadog - Test

  @TC920652
  @Manual
  @Functional
  Scenario: TC920652 - [RL0]
    Given a endpoint is up
    When it gets configured in datadog
    Then alert is enabled in datadog if down

