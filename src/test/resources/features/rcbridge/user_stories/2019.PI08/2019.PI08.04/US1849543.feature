# Last updated on 
@Visio
@US1849543
@2019.PI08
@2019.PI08.04
@releasePresent
@iterationFuture
Feature: US1849543 - Integrate search capability on Escalator Process

  @TC846504
  @Manual
  @Functional
  @Visio
  Scenario: TC846504 - [RL0]
    Given I am on the input
    When I am on the top of the form
    Then I must see the following new optional search fields along with the existing Contract ID
    And I can search by Counterparty Name
    And I can search by TIN
    And I can search by MPIN
    And I can search by NPI
    And I can search by Contract ID
    And I must be able to see the search results: Contract ID, Name, TIN, MPIN, NPI, Contract Name, Market, Site, Effective Date
    And I must be able to select one or more results to add to a workflow

  @TC868376
  @Manual
  @Functional
  @Visio
  Scenario: TC868376 - [RL1]
    Given I have searched contract for defined search parameters
    When there are no results based upon the criteria
    Then an error is displayed, "There are no results based upon your input. Please try again."

