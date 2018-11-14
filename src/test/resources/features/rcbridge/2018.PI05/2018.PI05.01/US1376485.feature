# Last updated on 
@US1376485
@2018.PI05
@2018.PI05.01
@MVP
@Priority_2
@Parity
@releaseFuture
@iterationFuture
Feature: US1376485 - Extract 1 - NDB Physician (Product) based on migration parameters - Team 4 knowledge transfer and shared support for ongoing runs

  @TC608273
  @Manual
  @Functional
  Scenario: TC608273 - [RL0]
    Given I use the Emptoris Contract Number to match to the dicarta doc id in NDB
    When I extract the extract the Contract Master, Product, Financial Penalty Table, ENW Indicator from NDB
    Then I am able to send that extract to Team 3 or Transformation

