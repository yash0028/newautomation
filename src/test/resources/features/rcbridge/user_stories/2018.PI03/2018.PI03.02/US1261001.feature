# Last updated on 
@US1261001
@2018.PI03
@2018.PI03.02
@releasePast
@iterationPast
Feature: US1261001 - [Unfinished] Exari Search API Implementation

  @TC605412
  @Manual
  @Functional
  Scenario: TC605412 - [RL0]
    Given an application wants to search contracts by any fields
    When the search API is called
    Then a list of contracts will be returned that matches the search criteria.
    ###
    Given an application wants to search contracts by any fields
    When the Search API is called
    And the Search API is down
    Then verify how the system responds to the request

