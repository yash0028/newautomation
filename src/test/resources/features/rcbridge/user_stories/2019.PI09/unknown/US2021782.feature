# Last updated on 
@Arvind
@Suman
@Adele_R
@US2021782
@2019.PI09
@releaseFuture
@iterationUnknown
Feature: US2021782 - FS on MSPS for West  - Rate Escalator - IdahoWashington

  @TC960460
  @Manual
  @Functional
  @Arvind
  @Suman
  @Adele_R
  Scenario: TC960460 - [RL1]
    Given a rate escalator process exists
    When the region is not West UHN
    Then a task "Confirm Fee Schedules on MSPS" is assigned to contract owner
    And the text displayed in the form is "Please complete this task after you've received confirmation that the Fee Schedules are updated in MSPS."

