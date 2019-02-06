# Last updated on 
@US1551031
@2019.PI06
@2019.PI06.04
@releaseFuture
@iterationFuture
Feature: US1551031 - Store the Product Group's updated Contract Master in the Contract's permanent configuration record

  @TC710724
  @Manual
  @Functional
  Scenario: TC710724 - [RL0]
    Given a contracting event that is replacing the current fee schedule used by one Product Group in a successfully installed active Contract
    When the transaction is successfully completed
    Then the new Contract Master that references the affected Product Group & updated fee schedule is stored as part of the Contract's permanent configuration record

