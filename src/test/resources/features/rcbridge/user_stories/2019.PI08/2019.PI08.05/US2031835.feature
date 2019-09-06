# Last updated on 
@US2031835
@2019.PI08
@2019.PI08.05
@releasePast
@iterationPast
Feature: US2031835 - [Unfinished] Select related errors within a single contract ID - Type 2

  @TC968852
  @Manual
  @Functional
  Scenario: TC968852 - [RL0]
    Given a contract has resulted in Type 1 errors or Type 2 errors
    When a user searches for the contract ID
    And navigates to the Action Required section from the 4-blocker
    Then the user will see a checkbox to the left of the target/transaction record
    And the user will be able to select one or more target/transactions within the contract ID

  @TC968862
  @Manual
  @Functional
  Scenario: TC968862 - [RL1]
    Given a contract has resulted in Type 1 errors or Type 2 errors
    When a user searches for the contract ID
    And navigates to the Action Required section from the 4-blocker
    And the user wants to select all targets that errored
    Then the user will see an option/button to "select all" option
    And "select all" will check/select all of the transaction/targets within the error bucket (e.g. Contract Master Override) for the engaged contract ID
    And the user will not have to select all on each results page
    And the user will not need to select targets individually
    And the user can deselect targets individually
    And the user can select targets individually

