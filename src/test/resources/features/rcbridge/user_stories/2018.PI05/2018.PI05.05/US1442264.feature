# Last updated on 
@US1442264
@2018.PI05
@2018.PI05.05
@releasePresent
@iterationPresent
Feature: US1442264 - Retrieve a Contract's entire configuration based on product group

  @TC713742
  @Manual
  @Functional
  Scenario: TC713742 - [RL0]
    Given that the OCM has been enhanced
    When a Contract Configuration record has been created for a Contract identified by a unique contract identifier
    Then demonstrate that the Contract Configuration service endpoint returns the Contract's entire configuration

  @TC713748
  @Manual
  @Functional
  Scenario: TC713748 - [RL1]
    Given that the OCM has been enhanced
    When a Contract Configuration record has been created for a Contract identified by a unique contract identifier
    Then demonstrate that the Contract Configuration service endpoint returns the Contract's entire configuration
    And includes A list of all 'Above-the-Line' Product Group Names mapped to a structure
    And the structure includes ProductGroupId
    And the structure includes Array of ProductIds
    And the array of structures includes Market Number
    And Fee Schedule Id
    And Network Id
    And Condition Criteria
    And Contract Master id
    And a list of all 'Below the Line' Product Group Names mapped to a structure
    And the structure includes ProductGroupid

  @TC713750
  @Manual
  @Functional
  Scenario: TC713750 - [RL2]
    Given that the OCM has been enhanced
    When a Contract Configuration record has been created for a Contract identified by a unique contract identifier
    Then demonstrate that the Contract Configuration service endpoint returns the Contract's entire configuration
    And includes A list of all 'Above-the-Line' Market Product Group Names mapped to a structure
    And the structure includes MarketProductGroupId
    And the structure includes Array of ProductGroupIds
    And the array of structures includes Market Number
    And Fee Schedule Id
    And Network Id
    And Condition Criteria
    And Contract Master id
    And a list of all 'Below the Line' Market Product Group Names mapped to a structure
    And the structure includes MarketProductGroupid
    And an array of ProductGroupids

  @TC713751
  @Manual
  @Functional
  Scenario: TC713751 - [RL3]
    Given that the OCM has been enhanced
    When a Provider Contract Configuration record has been created for a Provider identified by a unique Contract identifier and Provider identifier
    Then demonstrate that the Provider Contract Configuration service endpoint returns the Provider Contract configuration
    And includes a list of Market Product Groups mapped to a structure
    And the structure includes an Array of ProductGroupids
    And the array of structures includes Financial Penalty Table
    And Timely Filing Limit Days
    And CapIndicator
    And ENW Opt Out Indicator
    And MedNec Indicator
    And MedNec Eff Dt
    ###

