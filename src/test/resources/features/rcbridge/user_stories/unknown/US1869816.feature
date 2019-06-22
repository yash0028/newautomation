# Last updated on 
@US1869816
@releaseUnknown
@iterationUnknown
Feature: US1869816 - Withdrawn retro notification

  @TC863806
  @Manual
  @Functional
  Scenario: TC863806 - [RL0]
    Given a retro exists with approvals
    When the retro is withdrawn
    Then all people who have approved the retro are notified
    And the subject is
    And the body is

