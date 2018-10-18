# Last updated on 
@US1094080
@2018.PI02
@2018.PI02.02
@MVP
@PI02_Top3
@Plus
@Parity
@F175417
@releasePast
@iterationPast
Feature: US1094080 - Transaction State Microservice - Transaction Configuration

  @TC565454
  @Automated
  @Functional
  @US1094080
  @2018.PI02
  @2018.PI02.02
  Scenario: TC565454 - [RL2]
    Given A transaction is in progress
    When A transaction state change is submitted
    Then A transaction state change message is published to the transaction log topic

  @TC565455
  @Automated
  @Functional
  @US1094080
  @2018.PI02
  @2018.PI02.02
  Scenario: TC565455 - [RL3]
    Given A transaction is in progress
    When A transaction state change is submitted with an invalid transaction id
    Then The REST api returns a not found error
    And An error is logged to the logfile

  @TC565452
  @Automated
  @Functional
  @US1094080
  @2018.PI02
  @2018.PI02.02
  Scenario: TC565452 - [RL0]
    Given A business event is submitted
    When A transaction is initialized
    Then A new transaction id is generated
    And The completion criteria is looked up from the configuration and included in the event data
    And The go/no go criteria is looked up from the configuration and included in the event data
    And A transaction initialization message is published to the transaction log topic

  @TC565453
  @Automated
  @Functional
  @US1094080
  @2018.PI02
  @2018.PI02.02
  Scenario: TC565453 - [RL1]
    Given A business event is submitted
    When A transaction is initialized and the configuration lookup fails
    Then The REST api returns an internal server error
    And An error is logged to the logfile

  @TC565456
  @Automated
  @Functional
  @US1094080
  @2018.PI02
  @2018.PI02.02
  Scenario: TC565456 - [RL4]
    Given A transaction is in progress
    When A transaction state change is submitted and the transaction state message cannot be published to Kafka
    Then The REST api returns an internal server error
    And An error is logged to the logfile

