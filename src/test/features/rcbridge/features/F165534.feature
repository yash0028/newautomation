# Last updated on 2018-07-09T15:33:39.847Z
@MVP
@PI04
@Plus
Feature: F165534 - Setup Retro Approval

  @2018.PI04
  Scenario: US1039748
    Given a contract has an effective date in the past
    When it is being executed
    And no retro approval exists
    Then tell us user that they need to obtain retro approval

