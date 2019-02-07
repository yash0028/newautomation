# Last updated on 
@US1398353
@2019.PI06
@2019.PI06.04
@releasePresent
@iterationFuture
Feature: US1398353 - Cancel / End Contract Masters on the ContractConfiguration Record (OCM)

  @TC710723
  @Manual
  @Functional
  Scenario: TC710723 - [RL0]
    Given a fee schedule has been changed on a contract
    When the fee schedule being changed is included in contract masters in the contract configuration record
    Then contract masters are updated with an end date
    And the date is calculated based on effective start date of new fee schedule minus/less 1 calendar day

