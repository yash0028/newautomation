# Last updated on 
@CMD_UI
@US1809795
@2019.PI08
@2019.PI08.02
@releasePast
@iterationPast
Feature: US1809795 - CMD Search navigation correction

  @TC829009
  @Manual
  @Functional
  @CMD_UI
  Scenario: TC829009 - [RL0]
    Given a user provides a valid contract id in the CMD UI search bar
    When the user needs to initiate the search
    And the user presses/selects the enter button or tab+enter button
    Then the search is initiated
    ###

