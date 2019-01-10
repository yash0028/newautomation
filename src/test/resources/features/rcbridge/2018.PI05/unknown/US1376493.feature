# Last updated on 
@US1376493
@2018.PI05
@MVP
@Priority_2
@Parity
@releasePresent
@iterationUnknown
Feature: US1376493 - Extract 2 - COSMOS Physician (Product) based on migration parameters - Team 4 knowledge transfer and shared support for ongoing runs

  @TC608267
  @Manual
  @Functional
  Scenario: TC608267 - [RL0]
    Given I use the Emptoris Contract Number to match to the dicarta doc id in COSMOS
    When I extract the extract the Contract Master, Div, Panel, Financial Penalty Table from COSMOS
    Then I am able to send that extract to Team 3 or Transformation

