# Last updated on 
@MSG
@US1505565
@2018.PI05
@2018.PI05.05
@releaseUnknown
@iterationUnknown
Feature: US1505565 - MSG Specialty Mapping Pt. 2

  @TC705774
  @Manual
  @Functional
  @MSG
  Scenario: TC705774 - [RL0]
    Given backend changes to the MSG service
    When a regression of MSG tests is run
    Then the tests should be passing

