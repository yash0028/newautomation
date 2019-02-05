# Last updated on 
@US1544580
@2019.PI06
@2019.PI06.02
@releaseFuture
@iterationFuture
Feature: US1544580 - Market Lead Due date

  @TC716979
  @Manual
  @Functional
  Scenario: TC716979 - [RL0]
    Given 2 business days have past on a retro approval request
    When the new day begins
    Then send a reminder email to the Market Lead

