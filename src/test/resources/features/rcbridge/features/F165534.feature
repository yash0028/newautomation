# Last updated on 2018-08-03T15:25:33.347Z
@MVP
@PI04
@Plus
Feature: F165534 - Setup Retro Approval

  @Configuration_for_10/1/18
  Scenario: US1039748
    Given a contract has an effective date in the past
    When it is being executed
    And no retro approval exists
    Then tell us user that they need to obtain retro approval

