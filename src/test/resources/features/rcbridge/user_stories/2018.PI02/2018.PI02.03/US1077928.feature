# Last updated on 
@US1077928
@2018.PI02
@2018.PI02.03
Feature: US1077928 - Transaction Status Microservice

  @TC565581
  @Automated
  @Functional
  Scenario: TC565581 - [RL2]
    Given Transaction is open
    When The status is queried
    And A database is not available
    Then An error message is returned

  @TC565579
  @Automated
  @Functional
  Scenario: TC565579 - [RL0]
    Given No transaction is open
    When The status is queried
    And A given transaction id is not found
    Then A not found error is returned

  @TC565580
  @Automated
  @Functional
  Scenario: TC565580 - [RL1]
    Given Transaction is open
    When The status is queried
    And A given transaction id is found
    Then Then transaction status is returned

