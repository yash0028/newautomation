# Last updated on 
@Visio
@US1849534
@2019.PI08
@releaseFuture
@iterationUnknown
Feature: US1849534 - Integrate search capability on Physician Process

  @TC846503
  @Manual
  @Functional
  @Visio
  Scenario: TC846503 - [RL0]
    Given I am on the Deal ID Grid in the Add or Update contract subprocess
    When I want to search contract for defined search parameters
    Then I must see the following new search fields
    And I can search by Counterparty Name
    And I can search by TIN
    And I can search by MPIN
    And I can search by NPI
    And I must be able to see the search results: Contract ID, Name, TIN, MPIN, NPI, Contract Name, Market, Site, Effective Date

  @TC861697
  @Manual
  @Functional
  @Visio
  Scenario: TC861697 - [RL1]
    Given I have searched contract for defined search parameters
    When there are no results based upon the criteria
    Then an error is displayed, "There are no results based upon your input. Please try again."

  @TC861699
  @Manual
  @Functional
  @Visio
  Scenario: TC861699 - [RL2]
    Given I have searched contract for defined search parameters
    When there are no results due to API error
    Then an error is displayed, "The system encountered an error. Please try again. If it persists please contact the system administrator."

