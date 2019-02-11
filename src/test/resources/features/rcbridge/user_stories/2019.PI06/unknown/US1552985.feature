# Last updated on 
@US1552985
@2019.PI06
@releasePresent
@iterationUnknown
Feature: US1552985 - Monitor 60 Day Timer For expiration

  @TC713740
  @Manual
  @Functional
  Scenario: TC713740 - [RL0]
    Given a retro request is approved
    When the agreement has not been submitted for load
    And it is 61 days (or number of days specified by LOB COO) after the approval
    Then the retro approval request is returned to the initiator as a new task
    And the Market Lead and NPPP are involved users on this task
    And the retro approval status must be expired

