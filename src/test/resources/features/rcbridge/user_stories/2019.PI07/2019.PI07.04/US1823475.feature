# Last updated on 
@US1823475
@2019.PI07
@2019.PI07.04
@releasePresent
@iterationPresent
Feature: US1823475 - Y-line functionality implementation for Medicaid

  @TC843991
  @Manual
  @Functional
  Scenario: TC843991 - [RL0]
    Given Exari application is available
    When a Medicaid contract [y-line] is created
    Then the contract details are stored into NDB system

