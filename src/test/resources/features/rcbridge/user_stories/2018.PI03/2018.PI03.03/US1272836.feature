# Last updated on 
@kumar,_Sachin
@US1272836
@2018.PI03
@2018.PI03.03
@releasePast
@iterationPast
Feature: US1272836 - [Spike] Look at Services to determine Pagination

  @TC564525
  @Manual
  @Functional
  @kumar,_Sachin
  Scenario: TC564525 - [RL0]
    Given a microservice might return a large data set
    When a large data set is return
    Then pagination will be required to present to the user a set of results to view

