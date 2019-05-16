# Last updated on 
@US1737280
@2019.PI07
@2019.PI07.03
@releasePresent
@iterationPresent
Feature: US1737280 - PCP reassignment changes for product cancel amendment

  @TC797735
  @Manual
  @Functional
  Scenario: TC797735 - [RL0]
    Given a ContractAmended transaction has been received
    And the transaction includes a product cancel
    When an impacted provider is a PCP
    Then a Type 1 error is logged
    And the user will be able to resolve the error within the PCP Reassignment tab of CMD

