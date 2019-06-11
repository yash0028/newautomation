# Last updated on 
@US1839299
@2019.PI08
@releaseFuture
@iterationUnknown
Feature: US1839299 - 5 Send Provider updated Fee Schedules - Rate Escalator

  @TC843993
  @Manual
  @Functional
  Scenario: TC843993 - [RL0]
    Given a rate escalator process exists
    When Fee Schedules are submitted at the MSPS site
    Then a task "Send Provider updated Fee Schedules" is assigned to contract owner
    And the text displayed in the form is "Please complete this task after you have provided the updated Fee Schedules to the Provider."

