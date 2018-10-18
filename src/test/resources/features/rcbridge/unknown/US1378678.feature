# Last updated on 
@US1378678
@F232975
@releaseUnknown
@iterationUnknown
Feature: US1378678 - Kafka Training Environment

  @TC610180
  @Manual
  @Functional
  @US1378678
  Scenario: TC610180 - [RL0]
    Given the training environment has a service in it,
    When the service needs to communicate with training Kafka,
    Then the training Kafka brokers can handle the messages

