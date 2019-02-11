# Last updated on 
@US1561905
@2019.PI06
@releasePresent
@iterationUnknown
Feature: US1561905 - Close the retro approval process - successful - fac/anc

  @TC716032
  @Manual
  @Functional
  Scenario: TC716032 - [RL0]
    Given the retro request has an associated workflow (facility, chargemaster, escalator)
    When the associated agreement has been executed (status is active)
    And submitted for loading (from the associated workflow)
    Then the retro process is closed
    And the status is "Successful"

  @TC716035
  @Manual
  @Functional
  Scenario: TC716035 - [RL1]
    Given the retro request does not have an associated workflow (Benefit Ops)
    When the associated agreement has been executed
    Then the retro process is closed
    And the status is "Successful"

