# Last updated on 
@Arvind
@Suman
@Adele_R
@US1966619
@2019.PI08
@2019.PI08.04
@releasePresent
@iterationPast
Feature: US1966619 - FS on MSPS for West  - Rate Escalator

  @TC935484
  @Manual
  @Functional
  @Arvind
  @Suman
  @Adele_R
  Scenario: TC935484 - [RL1]
    Given a rate escalator process exists
    When the region is not West UHN
    Then a task "Confirm Fee Schedules on MSPS" is assigned to contract owner
    And the text displayed in the form is "Please complete this task after you've received confirmation that the Fee Schedules are updated in MSPS."

