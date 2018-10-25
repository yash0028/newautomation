# Last updated on 
@US1396749
@2018.PI05
@2018.PI05.02
@MVP
@Maintenance
@F236509
@releaseFuture
@iterationFuture
Feature: US1396749 - Allow Duplicate Edit 1 and 2 overrides on Draft contracts

  @TC619292
  @Manual
  @Functional
  @US1396749
  @2018.PI05
  @2018.PI05.02
  Scenario: TC619292 - [RL0]
    Given I start an interview and a Duplicate Edit exists
    When I perform the actions to perform an override and the controlled processed occurs/completes
    Then I am able to continue through Final Capture with no further Duplicate Edits

