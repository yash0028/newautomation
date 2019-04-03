# Last updated on 
@US1665773
@2019.PI06
@2019.PI06.04
@releasePresent
@iterationPresent
Feature: US1665773 - Pass contract information to downstream - NDB

  @TC765088
  @Manual
  @Functional
  Scenario: TC765088 - [RL0]
    Given a ContractAmended transaction has been received from Exari
    When the validation and compare services have completed
    And the transaction has been identified as a Fee Schedule change
    Then the cancel information - contract master ID, cancel date, cancel reason code - will be passed to the NDB
    And the add information - contract master ID, effective date - will be passed to the NDB
    And the transaction should pass/load to NDB

