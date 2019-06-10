# Last updated on 
@US1693764
@2019.PI06
@2019.PI06.04
@releaseUnknown
@iterationUnknown
Feature: US1693764 - [Unfinished] Pass contract information to downstream - COSMOS

  @TC778304
  @Manual
  @Functional
  Scenario: TC778304 - [RL0]
    Given a ContractAmended transaction has been received from Exari
    When the validation and compare services have completed
    And the transaction has been identified as a Fee Schedule change
    Then the cancel information - contract master ID, cancel date, cancel reason code - will be passed to the COSMOS
    And the add information - contract master ID, effective date - will be passed to the COSMOS
    And the transaction should pass/load to COSMOS

