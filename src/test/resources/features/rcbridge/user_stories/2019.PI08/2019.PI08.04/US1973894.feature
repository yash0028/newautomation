# Last updated on 
@US1973894
@2019.PI08
@2019.PI08.04
@releasePresent
@iterationPast
Feature: US1973894 - Create delegate for reports of a person

  @TC929577
  @Manual
  @Functional
  Scenario: TC929577 - [RL0]
    Given a person has direct reports
    When looking up their MS ID
    Then all of their report's MS IDs are known
    And all of their report's MS IDs are known

