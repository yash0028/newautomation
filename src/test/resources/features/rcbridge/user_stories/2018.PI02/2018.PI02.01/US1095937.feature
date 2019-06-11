# Last updated on 
@CLM_UAT
@US1095937
@2018.PI02
@2018.PI02.01
@releasePast
@iterationPast
Feature: US1095937 - Approval Coordinator Microservice

  @TC701622
  @Manual
  @Functional
  @CLM_UAT
  Scenario: TC701622 - [RL0]
    Given A transaction is in progress
    When The business data is received
    And All Domain microservices send a successful result
    Then The result is checked for errors
    And The data is sent to the downstream updaters

  @TC701632
  @Manual
  @Functional
  @CLM_UAT
  Scenario: TC701632 - [RL1]
    Given A transaction is in progress
    When The business data is received
    And One or more domain services send an error
    Then The transaction is aborted with an error sent to the transaction log

  @TC701638
  @Manual
  @Functional
  @CLM_UAT
  Scenario: TC701638 - [RL2]
    Given A transaction is in progress
    When The business data is received
    And One or more domain services does not acknowledge the business event
    Then The transaction is aborted with a time-out error sent to the transaction log

