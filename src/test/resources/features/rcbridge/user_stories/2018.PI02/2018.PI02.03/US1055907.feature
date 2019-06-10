# Last updated on 
@US1055907
@2018.PI02
@2018.PI02.03
@releaseUnknown
@iterationUnknown
Feature: US1055907 - Kafka Consumer Library Test Cases

  @TC701621
  @Manual
  @Functional
  Scenario: TC701621 - [RL0]
    Given a message is produced
    When the processing fails
    Then the processing is retried

  @TC701634
  @Manual
  @Functional
  Scenario: TC701634 - [RL1]
    Given a message is retried
    When the retry attempts exhaust limit threshold is met
    Then the event is dead-lettered for manual operations

