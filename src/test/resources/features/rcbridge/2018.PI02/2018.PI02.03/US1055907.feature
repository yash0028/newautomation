# Last updated on 
@US1055907
@2018.PI02
@2018.PI02.03
@MVP
@PI02_Top3
@Plus
@Parity
@F175417
@releasePast
@iterationPast
Feature: US1055907 - Kafka Consumer Library Test Cases

  @TC565654
  @Automated
  @Functional
  @US1055907
  @2018.PI02
  @2018.PI02.03
  Scenario: TC565654 - [RL1]
    Given a message is retried
    When the retry attempts exhaust limit threshold is met
    Then the event is dead-lettered for manual operations

  @TC565653
  @Automated
  @Functional
  @US1055907
  @2018.PI02
  @2018.PI02.03
  Scenario: TC565653 - [RL0]
    Given a message is produced
    When the processing fails
    Then the processing is retried

