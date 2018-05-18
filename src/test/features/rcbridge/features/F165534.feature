# Last updated on 2018-05-15T20:48:53.769Z
@MVP
@Plus
Feature: F165534 - Setup Retro Approval

  Scenario: US1039748
    Given a contract has an effective date in the past
    When it is being executed
    When And no retro approval exists
    Then tell us user that they need to obtain retro approval

