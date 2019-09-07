# Last updated on 
@ready_for_test
@Suman
@US1934956
@2019.PI09
@2019.PI09.01
@releasePresent
@iterationPresent
Feature: US1934956 - Financial Analysis/Rates task needs product

  @TC909549
  @Manual
  @Functional
  @ready_for_test
  @Suman
  Scenario: TC909549 - [RL0]
    Given a contractor is viewing the "Financial analysis/rates" task
    When they look at the Current Fee schedule section
    Then the Product displays
    And the Rate Condition Category displays

