# Last updated on 
@US1194531
@2018.PI02
@2018.PI02.04
@MVP
@PI02_Top3
@NDB
@Parity
@F185083
@releasePast
@iterationPast
Feature: US1194531 - [Unfinished] Exari event producer [contracts-gateway-api]

  @TC605414
  @Manual
  @Functional
  @US1194531
  @2018.PI02
  @2018.PI02.04
  Scenario: TC605414 - [RL1]
    Given A business transaction
    When Transaction is received from Exari but the transaction state service is down
    Then An error is returned

  @TC605413
  @Manual
  @Functional
  @US1194531
  @2018.PI02
  @2018.PI02.04
  Scenario: TC605413 - [RL0]
    Given A business transaction
    When Transaction is received from Exari
    Then A new transaction is created
    And The business is submitted to the business event topic

