# Last updated on 
@US1039748
@Configuration_for_2/15/19
@MVP
@PI04
@Plus
@F165534
@releasePresent
@iterationUnknown
Feature: US1039748 - Prevent execution of contract if retro and no approval

  @TC565765
  @Automated
  @Functional
  @US1039748
  @Configuration_for_2/15/19
  Scenario: TC565765 - [RL1]
    Given a Physician contract and the planned effective date is within 15 calendar days or in the past
    When it is being executed
    And no retro approval exists
    Then tell user that they need to obtain retro approval

  @TC565764
  @Automated
  @Functional
  @US1039748
  @Configuration_for_2/15/19
  Scenario: TC565764 - [RL0]
    Given a FAC/ANC contract and the planned effective date is within 15 calendar days or in the past
    When it is being executed
    And no retro approval exists
    Then tell user that they need to obtain retro approval

