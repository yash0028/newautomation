# Last updated on 
@US1179417
@2018.PI02
Feature: US1179417 - [Continued] Exari event producer [contracts-gateway-api]

  @TC564722
  @Automated
  @Functional
  Scenario: TC564722 - [RL1]
    Given A business transaction
    When Transaction is received from Exari but the transaction state service is down
    Then An error is returned

  @TC564721
  @Automated
  @Functional
  Scenario: TC564721 - [RL0]
    Given A business transaction
    When Transaction is received from Exari
    Then A new transaction is created
    And The business is submitted to the business event topic

