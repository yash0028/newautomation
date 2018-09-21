# Last updated on 
@CLM_UAT
@US1077918
@2018.PI02
@2018.PI02.01
Feature: US1077918 - Transaction State Microservice

  @TC564443
  @Automated
  @Functional
  Scenario: TC564443 - [RL3]
    Given A transaction is in progress
    When A transaction state change is submitted and the transaction state message cannot be published to Kafka
    Then The REST api returns an internal server error
    And An error is logged to the logfile
    # An interface specification is defined for the service API

  @TC564440
  @Automated
  @Functional
  Scenario: TC564440 - [RL0]
    Given A business event is submitted
    When A transaction is initialized
    Then A new transaction id is generated
    And A transaction initialization message is published to the transaction log topic

  @TC564442
  @Automated
  @Functional
  Scenario: TC564442 - [RL2]
    Given A transaction is in progress
    When A transaction state change is submitted with an invalid transaction id
    Then The REST api returns a not found error
    And An error is logged to the logfile

  @TC564441
  @Automated
  @Functional
  Scenario: TC564441 - [RL1]
    Given A transaction is in progress
    When A transaction state change is submitted
    Then A transaction state change message is published to the transaction log topic

