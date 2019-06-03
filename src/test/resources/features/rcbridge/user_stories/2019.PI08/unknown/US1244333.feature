# Last updated on 
@US1244333
@2019.PI08
@releaseFuture
@iterationUnknown
Feature: US1244333 - Request HCE Modeling - Rate Escalator

  @TC564831
  @Automated
  @Functional
  Scenario: TC564831 - [RL0]
    Given a rate escalator exists
    When the task "HCE Modeling: Request Submitted" is created
    Then the assignee is:
    And the

