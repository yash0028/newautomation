# Last updated on 
@US1552985
@releaseUnknown
@iterationUnknown
Feature: US1552985 - Monitor 60 day timer for expiration

  @TC713740
  @Manual
  @Functional
  Scenario: TC713740 - [RL0]
    Given a retro request is approved
    When the agreement has not been submitted for load and it is 61 days after the approval
    Then the retro approval request is returned to the initiator
    And all involved users are notified.
    And the 60-day timer is expired
    And the Retro Request Approval status is "Expired"

