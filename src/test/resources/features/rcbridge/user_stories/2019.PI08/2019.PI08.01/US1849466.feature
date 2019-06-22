# Last updated on 
@Visio
@Suman
@US1849466
@2019.PI08
@2019.PI08.01
@releaseFuture
@iterationFuture
Feature: US1849466 - Create Search Delegate

  @TC846505
  @Manual
  @Functional
  @Visio
  @Suman
  Scenario: TC846505 - [RL0]
    Given I am using an Activity Manager process
    When I want to search contract for defined search parameters
    Then I must see the following new search fields
    And I can search by Counterparty Name
    And I can search by TIN
    And I can search by MPIN
    And I can search by NPI
    And I must be able to see the search results: Contract ID, Name, TIN, MPIN, NPI, Contract Name, Market, Site, Effective Date
    And I must be able to select one or more results to add to a workflow

  @TC861698
  @Manual
  @Functional
  @Visio
  @Suman
  Scenario: TC861698 - [RL1]
    Given I have searched contract for defined search parameters
    When there are no results based upon the criteria
    Then an error is displayed, "There are no results based upon your input. Please try again."

  @TC861700
  @Manual
  @Functional
  @Visio
  @Suman
  Scenario: TC861700 - [RL2]
    Given I have searched contract for defined search parameters
    When there are no results due to API error
    Then an error is displayed, "The system encountered an error. Please try again. If it persists please contact the system administrator."

