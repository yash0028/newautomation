# Last updated on 
@US1376485
@2018.PI04
@2018.PI05.01
@MVP
@Priority_2
@Parity
@F177194
Feature: US1376485 - Extract 1 - NDB Physician (Product) based on migration parameters - Team 4 knowledge transfer and shared support for ongoing runs

  @TC608273
  @Manual
  @Functional
  @US1376485
  @2018.PI04
  @2018.PI05.01
  Scenario: TC608273 - [RL0]
    Given I use the Emptoris Contract Number to match to the dicarta doc id in NDB
    When I extract the extract the Contract Master, Product, Financial Penalty Table, ENW Indicator from NDB
    Then I am able to send that extract to Team 3 or Transformation

