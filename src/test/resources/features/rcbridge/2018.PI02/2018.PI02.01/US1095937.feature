# Last updated on 
@CLM_UAT
@US1095937
@2018.PI02
@2018.PI02.01
@MVP
@PI02_Top3
@Plus
@Parity
@releasePast
@iterationPast
Feature: US1095937 - Approval Coordinator Microservice

  @TC565889
  @Automated
  @Functional
  @CLM_UAT
  Scenario: TC565889 - [RL0]
    Given A transaction is in progress
    When The business data is received
    And All Domain microservices send a successful result
    Then The result is checked for errors
    And The data is sent to the downstream updaters

  @TC565890
  @Automated
  @Functional
  @CLM_UAT
  Scenario: TC565890 - [RL1]
    Given A transaction is in progress
    When The business data is received
    And One or more domain services send an error
    Then The transaction is aborted with an error sent to the transaction log

  @TC565891
  @Automated
  @Functional
  @CLM_UAT
  Scenario: TC565891 - [RL2]
    Given A transaction is in progress
    When The business data is received
    And One or more domain services does not acknowledge the business event
    Then The transaction is aborted with a time-out error sent to the transaction log

