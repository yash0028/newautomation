# Last updated on 
@Adele_R
@US1839283
@2019.PI08
@2019.PI08.01
@releasePresent
@iterationPast
Feature: US1839283 - 4 & 5 Fee Schedule Submission and Send Provider updated Fee Schedules - Rate Escalator

  @TC865311
  @Manual
  @Functional
  @Adele_R
  Scenario: TC865311 - [RL1]
    Given a rate escalator process exists
    When Fee Schedules are submitted at the MSPS site
    Then a task "Send Provider updated Fee Schedules" is assigned to contract owner
    And the text displayed in the form is "Please complete this task after you have provided the updated Fee Schedules to the Provider."

