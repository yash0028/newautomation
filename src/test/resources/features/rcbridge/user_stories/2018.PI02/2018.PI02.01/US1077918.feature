# Last updated on 
@CLM_UAT
@US1077918
@2018.PI02
@2018.PI02.01
@releaseUnknown
@iterationUnknown
Feature: US1077918 - Transaction State Microservice

  @TC701619
  @Manual
  @Functional
  @CLM_UAT
  Scenario: TC701619 - [RL0]
    Given A business event is submitted
    When A transaction is initialized
    Then A new transaction id is generated
    And A transaction initialization message is published to the transaction log topic

  @TC701630
  @Manual
  @Functional
  @CLM_UAT
  Scenario: TC701630 - [RL1]
    Given A transaction is in progress
    When A transaction state change is submitted
    Then A transaction state change message is published to the transaction log topic

  @TC701635
  @Manual
  @Functional
  @CLM_UAT
  Scenario: TC701635 - [RL2]
    Given A transaction is in progress
    When A transaction state change is submitted with an invalid transaction id
    Then The REST api returns a not found error
    And An error is logged to the logfile

  @TC701641
  @Manual
  @Functional
  @CLM_UAT
  Scenario: TC701641 - [RL3]
    Given A transaction is in progress
    When A transaction state change is submitted and the transaction state message cannot be published to Kafka
    Then The REST api returns an internal server error
    And An error is logged to the logfile
    # An interface specification is defined for the service API

