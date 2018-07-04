# Last updated on 2018-07-03T17:43:58.562Z
@MVP
@PI04
@Plus
Feature: F165534 - Setup Retro Approval

  Scenario: US1039748
    Given a contract has an effective date in the past
    When it is being executed
    And no retro approval exists
    Then tell us user that they need to obtain retro approval

