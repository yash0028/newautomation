# Last updated on 
@Arvind
@ready_for_test
@Suman
@US1966619
@2019.PI09
@2019.PI09.01
@releasePresent
@iterationPast
Feature: US1966619 - FS on MSPS for West  - Rate Escalator

  @TC935484
  @Manual
  @Functional
  @Arvind
  @ready_for_test
  @Suman
  Scenario: TC935484 - [RL1]
    Given a rate escalator process exists
    When the region is not West UHN
    Then a task "Confirm Fee Schedules on MSPS" is assigned to contract owner
    And the text displayed in the form is "Please complete this task after you've received confirmation that the Fee Schedules are updated in MSPS."

