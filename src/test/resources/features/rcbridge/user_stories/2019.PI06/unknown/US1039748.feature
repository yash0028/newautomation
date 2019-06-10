# Last updated on 
@US1039748
@2019.PI06
@releaseUnknown
@iterationUnknown
Feature: US1039748 - Prevent execution of contract if retro and no approval

  @TC703883
  @Manual
  @Functional
  Scenario: TC703883 - [RL0]
    Given a FAC/ANC contract and the planned effective date is within 15 calendar days or in the past
    When it is being executed
    And no retro approval exists
    Then tell user that they need to obtain retro approval

  @TC703886
  @Manual
  @Functional
  Scenario: TC703886 - [RL1]
    Given a Physician contract and the planned effective date is within 30 calendar days or in the past
    When it is being executed
    And no retro approval exists
    Then tell user that they need to obtain retro approval

