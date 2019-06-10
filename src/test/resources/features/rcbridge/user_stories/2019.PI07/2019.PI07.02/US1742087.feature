# Last updated on 
@US1742087
@2019.PI07
@2019.PI07.02
@releaseUnknown
@iterationUnknown
Feature: US1742087 - Select the Reassign MPIN

  @TC797734
  @Manual
  @Functional
  Scenario: TC797734 - [RL0]
    Given a ContractAmended transaction is received from Exari
    And the transaction is for fee schedule change
    When the contract includes one or more PCP providers
    And the cancel portion of the fee schedule change is processed
    Then a Type 1 error should not be logged
    And the service should select the same MPIN of the PCP provider present in the contract
    And the same MPIN of the PCP provider present in the contract should be included in the payload

