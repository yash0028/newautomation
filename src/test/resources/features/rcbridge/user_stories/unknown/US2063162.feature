# Last updated on 
@US2063162
@releaseUnknown
@iterationUnknown
Feature: US2063162 - Automate cleanup of MSG database

  @TC987533
  @Manual
  @Functional
  Scenario: TC987533 - [RL0]
    When the msg database receives an update
    Then data from more than 2 previous versions is automatically deleted

