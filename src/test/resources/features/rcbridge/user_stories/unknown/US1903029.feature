# Last updated on 
@US1903029
@releaseUnknown
@iterationUnknown
Feature: US1903029 - Upgrade Kafka Training Env

  @TC884051
  @Manual
  @Functional
  Scenario: TC884051 - [RL0]
    Given kafka cluster exists in Training Env
    When its upgraded to 2.2.0
    Then it should produce/consume messages as expected.

