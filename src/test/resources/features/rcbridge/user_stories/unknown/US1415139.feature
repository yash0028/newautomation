# Last updated on 
@US1415139
@releaseUnknown
@iterationUnknown
Feature: US1415139 - [Defect]Each product group with multiple contract masters are displaying more than 7 contract masters

  @TC743339
  @Manual
  @Functional
  Scenario: TC743339 - [RL0]
    # Scenario 1 (Single Product Grouping under contract ID- More than one contract master found)
    Given I have clicked on the detail information on a contract ID
    When The contract ID has a single product grouping
    And More than one contract master was found
    Then I can see up to the first 7 contract masters for the product grouping that was returned from the search
    # Scenario 2 (Multiple Product grouping under contract ID- All have more than one contract master was found
    Given I have clicked on the detail information on a contract ID
    When The contract ID has Multiple product groupings
    And More than one contract master was found for all product groupings
    Then I can see up to the first 7 contract masters for each product grouping that was returned from the search
    # Scenario 3 (multiple product grouping under contract ID- at least one has no contract master, at least one has more than one contract master)
    Given I have clicked on the detail information on a contract ID
    When The contract ID has a Multiple product groupings
    And No contract master was found for at least one product grouping
    And Multiple contract masters were found for at least one product grouping
    Then For each product grouping under the contract ID where no contract master was found I can see the following message: No contract master ID was found. Please make a selection to complete the contract load. For each product grouping where more than one contract master was found I can see up to the first 7 contract masters from the search.

