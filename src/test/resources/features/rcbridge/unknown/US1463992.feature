# Last updated on 
@US1463992
@releaseUnknown
@iterationUnknown
Feature: US1463992 - Track Changes

  @TC672202
  @Manual
  @Functional
  Scenario: TC672202 - [RL0]
    Given I am the Entity Management Solution
    When an Entity Manager record is created, modified, or removed
    Then I store the date, time, previous value, current value, and User who performed the change

