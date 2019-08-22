# Last updated on 
@Suman
@US1869816
@2019.PI08
@2019.PI08.05
@releasePresent
@iterationPresent
Feature: US1869816 - Withdrawn retro notification

  @TC863806
  @Manual
  @Functional
  @Suman
  Scenario: TC863806 - [RL0]
    Given a retro exists with approvals
    When the retro is withdrawn
    Then all people who have approved the retro are notified
    And the subject is "Retro Approval Request for <Provider Name> is Withdrawn"
    And the body is "The Retro Request Request for <Provider Name> is withdrawn. The reason is <withdrawal reason>."

