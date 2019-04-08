# Last updated on 
@US1665774
@2019.PI06
@2019.PI06.05
@releasePresent
@iterationPresent
Feature: US1665774 - [Continued] Pass contract information to downstream - COSMOS - Fee Schedule

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

