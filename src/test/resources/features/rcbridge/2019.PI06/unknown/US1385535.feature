# Last updated on 
@US1385535
@2019.PI06
@CMD
@releaseFuture
@iterationUnknown
Feature: US1385535 - Update Contract service to check for PCP Reassignment and add to canonical contract update request

  @TC614174
  @Manual
  @Functional
  Scenario: TC614174 - [RL0]
    Given a contract event transaction is initiated/received
    When the contract record includes a PCP that is terminating
    Then a contract service to retrieve PCP reassignment details from the database is available

  @TC700960
  @Manual
  @Functional
  Scenario: TC700960 - [RL1]
    Given a contract event transaction is initiated/received
    When the contract record DOES NOT includes a PCP that is terminating
    Then a contract service to retrieve PCP reassignment details from the database is not required

  @TC700965
  @Manual
  @Functional
  Scenario: TC700965 - [RL2]
    Given a contract event transaction is initiated/received
    When the contract record includes a PCP that is terminating
    Then the OCM model record includes the PCP reassignment details
    And the reassignment details are stored in the OCM database record
    And the OCM record details are available for retrieval
    ###

