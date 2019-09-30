# Last updated on 
@CMD_UI
@US1809731
@2019.PI08
@2019.PI08.04
@releasePast
@iterationPast
Feature: US1809731 - [Continued] CMD UI Navigation path improvement

  @TC829008
  @Manual
  @Functional
  @CMD_UI
  Scenario Outline: TC829008 - [RL0] Search for Type 1 Error
    # Search for Type 1 Error
    Given the user enters the contract id <contractId> in the search bar
    And the contract has the 'Manual Input' status with a Contract Master Override (Type 1)
    When the user clicks the 'Manual Input' button for the contract
    Then the user will only see contract <contractId> in the Contract Master Override tab
    And the user is routed back to the previous search results once manual input is complete
    And the search is refreshed to show the new results for contract <contractId>
    Examples:
      | contractId |
      | 88794470   |

  @TC829010
  @Manual
  @Functional
  @CMD_UI
  Scenario Outline: TC829010 - [RL1] Search for Type 2 Error
    # Search for Type 2 Error
    Given the user enters the contract id <contractId> in the search bar
    And the contract has the 'Manual Input' status with a Downstream Error Resolution (Type 2)
    When the user clicks the 'Manual Input' button for the contract
    Then the user will only see contract <contractId> in the Downstream Error Resolution tab
    And the user is routed back to the previous search results once manual input is complete
    And the search is refreshed to show the new results for contract <contractId>
    Examples:
      | contractId |
      | 78829108   |

  @TC831735
  @Manual
  @Functional
  @CMD_UI
  Scenario Outline: TC831735 - [RL2] Search for PCP Type 1 Error
    # Search for PCP Type 1 Error
    Given the user enters the contract id <contractId> in the search bar
    And the contract has the 'Manual Input' status with a PCP Reassignment (Type 1)
    When the user clicks the 'Manual Input' button for the contract
    Then the user will only see contract <contractId> in the PCP Reassignment tab
    And the user is routed back to the previous search results once manual input is complete
    And the search is refreshed to show the new results for contract <contractId>
    Examples:
      | contractId |
      | TODO       |

  @TC882852
  @Manual
  @Functional
  @CMD_UI
  Scenario Outline: TC882852 - [RL3] Search for Failed
    # Search for Failed
    Given the user enters the contract id <contractId> in the search bar
    And the contract has the 'FAILED' status
    When the user clicks the 'FAILED' button for the contract
    Then the user will see the normal modal for FAILED contracts
    Examples:
      | contractId |
      | 350422021  |

  @TC929578
  @Manual
  @Functional
  @CMD_UI
  Scenario Outline: TC929578 - [RL4] Search for In-Progress
    # Search for In-Progress
    Given the user enters the contract id <contractId> in the search bar
    And the contract has the 'IN-PROGRESS' status
    When the user clicks the 'IN-PROGRESS' button for the contract
    Then the user will see the normal modal for IN-PROGRESS contracts
    Examples:
      | contractId |
      | 90305124   |

  @TC929579
  @Manual
  @Functional
  @CMD_UI
  Scenario Outline: TC929579 - [RL5] Search for Success
    # Search for Success
    Given the user enters the contract id <contractId> in the search bar
    And the contract has the 'SUCCESS' status
    When the user clicks the 'SUCCESS' button for the contract
    Then the user will see the normal modal for SUCCESS contracts
    Examples:
      | contractId |
      | 85859180   |

