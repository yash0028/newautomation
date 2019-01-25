# Last updated on 
@#MVP
@US1398786
@releaseUnknown
@iterationUnknown
Feature: US1398786 - Add / Start Contract Masters on the ContractConfiguration Record (OCM)

  @TC710727
  @Manual
  @Functional
  @#MVP
  Scenario: TC710727 - [RL0]
    Given a fee schedule has been changed on a contract
    When contract masters for the newly effective fee schedule/rate have been identified
    Then the contract configuration record is updated with the new fee schedule effdate

