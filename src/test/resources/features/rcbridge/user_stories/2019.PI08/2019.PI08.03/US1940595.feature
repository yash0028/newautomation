# Last updated on 
@Shweta
@US1940595
@2019.PI08
@2019.PI08.03
@releasePresent
@iterationPresent
Feature: US1940595 - Fix exception between APS and the delegate

  @TC913326
  @Manual
  @Functional
  @Shweta
  Scenario: TC913326 - [RL0]
    Given the search has been executed
    When the results populate into the grid
    Then there is no exception

