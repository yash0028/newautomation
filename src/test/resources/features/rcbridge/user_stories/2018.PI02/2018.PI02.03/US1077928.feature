# Last updated on 
@US1077928
@2018.PI02
@2018.PI02.03
@releasePast
@iterationPast
Feature: US1077928 - Transaction Status Microservice

  @TC701615
  @Manual
  @Functional
  Scenario: TC701615 - [RL0]
    Given No transaction is open
    When The status is queried
    And A given transaction id is not found
    Then A not found error is returned

  @TC701631
  @Manual
  @Functional
  Scenario: TC701631 - [RL1]
    Given Transaction is open
    When The status is queried
    And A given transaction id is found
    Then Then transaction status is returned

  @TC701640
  @Manual
  @Functional
  Scenario: TC701640 - [RL2]
    Given Transaction is open
    When The status is queried
    And A database is not available
    Then An error message is returned

