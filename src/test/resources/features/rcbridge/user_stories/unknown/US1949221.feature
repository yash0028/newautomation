# Last updated on 
@US1949221
@releaseUnknown
@iterationUnknown
Feature: US1949221 - Enable endpoint monitoring in Datadog - Dev

  @TC920653
  @Manual
  @Functional
  Scenario: TC920653 - [RL0]
    Given a endpoint is up
    When it gets configured in datadog
    Then alert is enabled in datadog if down

