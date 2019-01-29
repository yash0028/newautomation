# Last updated on 
@US1378678
@N/A
@releaseUnknown
@iterationUnknown
Feature: US1378678 - Kafka Training Environment

  @TC610180
  @Manual
  @Functional
  Scenario: TC610180 - [RL0]
    Given the training environment has a service in it,
    When the service needs to communicate with training Kafka,
    Then the training Kafka brokers can handle the messages

