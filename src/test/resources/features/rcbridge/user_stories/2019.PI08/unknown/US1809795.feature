# Last updated on 
@US1809795
@2019.PI08
@releaseFuture
@iterationUnknown
Feature: US1809795 - CMD Search navigation correction

  @TC829009
  @Manual
  @Functional
  Scenario: TC829009 - [RL0]
    Given a user provides a valid contract id in the CMD UI search bar
    When the user initiates the search
    Then the user is able to use the enter or tab-enter to execute the search
    ###

