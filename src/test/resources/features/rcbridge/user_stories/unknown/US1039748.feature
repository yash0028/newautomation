# Last updated on 
@US1039748
@Configuration_for_10/1/18
@MVP
@PI04
@Plus
@F165534
Feature: US1039748 - Prevent execution of contract if retro and no approval

  @TC565765
  @Automated
  @Functional
  @US1039748
  @Configuration_for_10/1/18
  Scenario: TC565765 - [RL1]
    Given a Physician contract and the planned effective date is within 15 calendar days or in the past
    When it is being executed
    And no retro approval exists
    Then tell user that they need to obtain retro approval

  @TC565764
  @Automated
  @Functional
  @US1039748
  @Configuration_for_10/1/18
  Scenario: TC565764 - [RL0]
    Given a FAC/ANC contract and the planned effective date is within 15 calendar days or in the past
    When it is being executed
    And no retro approval exists
    Then tell user that they need to obtain retro approval

