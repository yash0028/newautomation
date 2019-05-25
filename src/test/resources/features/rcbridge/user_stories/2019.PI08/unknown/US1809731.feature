# Last updated on 
@US1809731
@2019.PI08
@releaseFuture
@iterationUnknown
Feature: US1809731 - CMD UI Navigation path improvement

  @TC829008
  @Manual
  @Functional
  Scenario: TC829008 - [RL0]
    Given a user enters a valid contract id in the search bar
    When the search results include status of Manual Input
    And the user selects the button via the UI
    Then the user is routed to the Manual Input work queue

  @TC829010
  @Manual
  @Functional
  Scenario: TC829010 - [RL1]
    Given a user enters a valid contract id in the search bar
    When the search results include status of Error
    And the user selects the button via the UI
    Then the user is routed to the Error queue
    ###

