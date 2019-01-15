# Last updated on 
@US1179417
@2018.PI02
@2018.PI02.05
@MVP
@PI02_Top3
@NDB
@Parity
@releasePast
@iterationPast
Feature: US1179417 - [Continued] Exari event producer [contracts-gateway-api]

  @TC701610
  @Manual
  @Functional
  Scenario: TC701610 - [RL0]
    Given A business transaction
    When Transaction is received from Exari
    Then A new transaction is created
    And The business is submitted to the business event topic

  @TC701624
  @Manual
  @Functional
  Scenario: TC701624 - [RL1]
    Given A business transaction
    When Transaction is received from Exari but the transaction state service is down
    Then An error is returned

