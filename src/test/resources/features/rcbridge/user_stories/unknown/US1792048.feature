# Last updated on 
@US1792048
@2019.PI07.03
@releaseUnknown
@iterationPast
Feature: US1792048 - Throw Type 2 Error When NDB is Down

  @TC828082
  @Manual
  @Functional
  Scenario: TC828082 - [RL0]
    Given A business event is triggered from Exari
    When NDB is down
    Then the transaction should be caught under Type 2 error

