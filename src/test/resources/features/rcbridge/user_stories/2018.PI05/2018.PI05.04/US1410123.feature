# Last updated on 
@US1410123
@2018.PI05
@2018.PI05.04
@releaseUnknown
@iterationUnknown
Feature: US1410123 - Identify No master with effective date input error as Type 2 error

  @TC706028
  @Manual
  @Functional
  Scenario: TC706028 - [RL0]
    ##Scenario 1 (Identify contract master effective date error as type 2 error)
    Given I have submitted a contract master request
    When The response from the NDB API indicates the provider effective date is prior to the contract master
    Then The error should be classified as a type 2 error

