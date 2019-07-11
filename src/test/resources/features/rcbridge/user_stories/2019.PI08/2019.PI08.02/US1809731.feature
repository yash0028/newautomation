# Last updated on 
@CMD_UI
@US1809731
@2019.PI08
@2019.PI08.02
@releasePresent
@iterationPresent
Feature: US1809731 - CMD UI Navigation path improvement

  @TC829008
  @Manual
  @Functional
  @CMD_UI
  Scenario: TC829008 - [RL0]
    Given a user enters a valid contract id in the search bar
    When the search results include status of Manual Input
    And the Manual Input error type is Contract Master Override (Type 1)
    And the user selects the 'Manual Input' button via the UI
    Then the user is routed to the Contract Master Override Tab section of the Manual Input work queue
    And the user can only see the previously searched for contract id on the Contract Master Override tab
    And the user is routed back to the search results for the contract ID when manual input is complete
    And a refreshed search for that contract id is performed
    And the updated search results are visible to the user

  @TC829010
  @Manual
  @Functional
  @CMD_UI
  Scenario: TC829010 - [RL1]
    Given a user enters a valid contract id in the search bar
    When the search results include status of Manual Input
    And the Manual Input error type is Downstream Error Resolution (Type 2)
    And the user selects the 'Manual Input' button via the UI
    Then the user is routed to the Downstream Error Resolution tab section of the Manual Input work queue
    And the user can only see the previously searched for contract id on the Downstream Error Resolution tab
    And the user is routed back to the search results for the contract ID when manual input is complete
    And a refreshed search for that contract id is performed
    And the updated search results are visible to the user

  @TC831735
  @Manual
  @Functional
  @CMD_UI
  Scenario: TC831735 - [RL2]
    Given a user enters a valid contract id in the search bar
    When the search results include status of Manual Input
    And the Manual Input error type is PCP reassignment (Type 1)
    And the user selects the 'Manual Input' button via the UI
    Then the user is routed to the PCP Reassignment tab section of the Manual Input work queue
    And the user can only see the previously searched for contract id on the PCP Reassignment tab
    And the user is routed back to the search results for the contract ID when manual input is complete
    And a refreshed search for that contract id is performed
    And the updated search results are visible to the user

  @TC882852
  @Manual
  @Functional
  @CMD_UI
  Scenario: TC882852 - [RL3]
    Given a user enters a valid contract id in the search bar
    When the search results include status of Error
    And the user selects the Failed button via the UI
    Then the user views the modal window which is the same as current experience (no change to behavior)

