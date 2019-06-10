# Last updated on 
@CLM_UAT
@US1095885
@2018.PI02
@2018.PI02.01
@releaseUnknown
@iterationUnknown
Feature: US1095885 - Contract Gateway API

  @TC701614
  @Manual
  @Functional
  @CLM_UAT
  Scenario: TC701614 - [RL0]
    Given A business transaction
    When Transaction is received from Exari
    Then A new transaction is created
    And The business is submitted to the business event topic

  @TC701627
  @Manual
  @Functional
  @CLM_UAT
  Scenario: TC701627 - [RL1]
    Given A business transaction
    When Transaction is received from Exari but the transaction state service is down
    Then An error is returned

  @TC701637
  @Manual
  @Functional
  @CLM_UAT
  Scenario: TC701637 - [RL2]
    Given A business transaction
    When Transaction is received from Exari but Kafka is down
    Then An error is return

  @TC701642
  @Manual
  @Functional
  @CLM_UAT
  Scenario: TC701642 - [RL3]
    Given A business transaction
    When Transaction is received from Exari but the api gateway service is down
    Then An error is returned
    # An API Interface is needed for the rest API

