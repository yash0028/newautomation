# Last updated on 
@US1665774
@2019.PI06
@2019.PI06.04
@releasePresent
@iterationPresent
Feature: US1665774 - Pass contract information to downstream - COSMOS

  @TC765087
  @Manual
  @Functional
  Scenario: TC765087 - [RL0]
    Given a ContractAmended transaction has been received from Exari
    When the validation and compare services have completed
    And the transaction has been identified as a Fee Schedule change
    Then the cancel information - contract master ID, cancel date, cancel reason code - will be passed to the COSMOS
    And the add information - contract master ID, effective date - will be passed to the COSMOS
    And the transaction should pass/load to COSMOS

  @TC765089
  @Manual
  @Functional
  Scenario: TC765089 - [RL1]
    Given a ContractAmended transaction has been received from Exari
    When the validation and compare services have completed
    When the transaction has been identified as a Fee Schedule change
    When the cancel information - contract master ID, cancel date, cancel reason code - has been passed to the COSMOS
    When the add information - contract master ID, effective date - has been passed to the COSMOS
    When COSMOS produce an error
    Then a Type 2 error will be logged

