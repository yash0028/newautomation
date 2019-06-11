# Last updated on 
@#MVP
@US1398786
@2019.PI06
@2019.PI06.04
@releasePast
@iterationPast
Feature: US1398786 - Add / Start Contract Masters on the ContractConfiguration Record (OCM)

  @TC710727
  @Manual
  @Functional
  @#MVP
  Scenario: TC710727 - [RL0]
    Given a RATEUPDATED transaction has been received
    And the transaction has pass all validations
    When contract masters for the newly effective fee schedule/rate have been identified
    Then the contract configuration record is updated as of the DateEffectiveAmendment
    And the DateEffectiveAmendment would be used for all providers impacted by the change

  @TC757794
  @Manual
  @Functional
  @#MVP
  Scenario: TC757794 - [RL1]
    Given the RATEUPDATED transaction includes product group rate conditions
    When the contract product group rate details have been captured
    Then the product group rate conditions are captured in the OCM

