# Last updated on 
@US1561908
@releaseUnknown
@iterationUnknown
Feature: US1561908 - Close the process - successful - chargemaster

  @TC716033
  @Manual
  @Functional
  Scenario: TC716033 - [RL0]
    Given the retro request has an associated workflow (facility, chargemaster, escalator)
    When the associated agreement has been executed (status is active)
    And submitted for loading (from the associated workflow)
    Then the retro process is closed
    And the status is "Successful"

  @TC716036
  @Manual
  @Functional
  Scenario: TC716036 - [RL1]
    Given the retro request does not have an associated workflow (Benefit Ops)
    When the associated agreement has been executed
    Then the retro process is closed
    And the status is "Successful"

