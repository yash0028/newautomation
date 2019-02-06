# Last updated on 
@US1550162
@2019.PI06
@2019.PI06.04
@releaseFuture
@iterationFuture
Feature: US1550162 - Set monitor timer for retro

  @TC717638
  @Manual
  @Functional
  Scenario: TC717638 - [RL0]
    Given a retro approval request exist
    When it is approved
    Then the 60 day timer is set

  @TC717640
  @Manual
  @Functional
  Scenario: TC717640 - [RL1]
    Given a retro approval request exists
    When it is approved with a timer of less than 60 days
    Then the LOB specific timer is set for the number of days specified by the LOB COO

