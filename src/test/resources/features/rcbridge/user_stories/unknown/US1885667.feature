# Last updated on 
@Visio
@Suman
@US1885667
@releaseUnknown
@iterationUnknown
Feature: US1885667 - Create Search Delegate for Name

  @TC871755
  @Manual
  @Functional
  @Visio
  @Suman
  Scenario: TC871755 - [RL0]
    Given I am using an Activity Manager process
    When I want to search contract for defined search parameters
    Then I must see the following new search fields
    And I can search by Counterparty Name
    And I can search by TIN
    And I can search by MPIN
    And I can search by NPI
    And I must be able to see the search results: Contract ID, Name, TIN, MPIN, NPI, Contract Name, Market, Site, Effective Date
    And I must be able to select one or more results to add to a workflow

  @TC871756
  @Manual
  @Functional
  @Visio
  @Suman
  Scenario: TC871756 - [RL1]
    Given I have searched contract for defined search parameters
    When there are no results based upon the criteria
    Then an error is displayed, "There are no results based upon your input. Please try again."

  @TC871757
  @Manual
  @Functional
  @Visio
  @Suman
  Scenario: TC871757 - [RL2]
    Given I have searched contract for defined search parameters
    When there are no results due to API error
    Then an error is displayed, "The system encountered an error. Please try again. If it persists please contact the system administrator."

