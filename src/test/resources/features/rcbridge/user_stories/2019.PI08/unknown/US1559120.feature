# Last updated on 
@US1559120
@2019.PI08
@releaseUnknown
@iterationUnknown
Feature: US1559120 - Close the process - successful - escalator

  @TC714609
  @Manual
  @Functional
  Scenario: TC714609 - [RL0]
    Given the retro request has an associated workflow (facility, chargemaster, escalator)
    When the associated agreement has been executed (status is active)
    And submitted for loading (from the associated workflow)
    Then the retro process is closed
    And the status is "Successful"

  @TC714611
  @Manual
  @Functional
  Scenario: TC714611 - [RL1]
    Given the retro request does not have an associated workflow (Benefit Ops)
    When the associated agreement has been executed
    Then the retro process is closed
    And the status is "Successful"

