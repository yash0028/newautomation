# Last updated on 
@Suman
@US2021782
@2019.PI09
@2019.PI09.02
@releasePresent
@iterationPresent
Feature: US2021782 - FS on MSPS for West  - Rate Escalator - IdahoWashington

  @TC967058
  @Manual
  @Functional
  @Suman
  Scenario: TC967058 - [RL0]
    Given a rate escalator process exists
    When the region is West UHN
    And the market is 46600
    Then a task "Submit Fee Schedules on MSPS SIte" is assigned to user group FS_West_WA_OR_MT_AK
    And the text displayed in the form is "Please complete this task after you have submitted the Fee Schedule updates on the MSPS site."

  @RC_unlinked
  @TC960460
  @Manual
  @Functional
  @Suman
  Scenario: TC960460 - [RL1]
    Given a rate escalator process exists
    When the region is not West UHN
    Then a task "Confirm Fee Schedules on MSPS" is assigned to contract owner
    And the text displayed in the form is "Please complete this task after you've received confirmation that the Fee Schedules are updated in MSPS."

