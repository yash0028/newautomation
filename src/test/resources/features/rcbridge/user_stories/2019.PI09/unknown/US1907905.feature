# Last updated on 
@US1907905
@2019.PI09
@releaseFuture
@iterationUnknown
Feature: US1907905 - All Remaining

  @TC882855
  @Manual
  @Functional
  Scenario: TC882855 - [RL0]
    Given UHC_ConditionalFeeScheduleRate (object) applies to a contract
    And rateCategoryValue ==AllRemaining
    And all roster records processed for the rateCategory {}
    When roster records that did not previously meet conditions for the rateCategory identified
    Then conditions have been met for the rateCategoryValue =AllRemaining
    And the process is complete for the rateCategory.

