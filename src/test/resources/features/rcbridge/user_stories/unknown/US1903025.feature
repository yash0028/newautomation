# Last updated on 
@US1903025
@releaseUnknown
@iterationUnknown
Feature: US1903025 - Enable Datadog logging for core services

  @TC884054
  @Manual
  @Functional
  Scenario: TC884054 - [RL0]
    Given a service exists,
    When it gets configured in datadog
    Then logging is enabled in datadog

