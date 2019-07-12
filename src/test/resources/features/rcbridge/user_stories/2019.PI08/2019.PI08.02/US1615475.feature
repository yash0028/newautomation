# Last updated on 
@Visio
@Suman
@US1615475
@2019.PI08
@2019.PI08.02
@releasePresent
@iterationPresent
Feature: US1615475 - Integrate search capability on Retro Process

  @TC755353
  @Manual
  @Functional
  @Visio
  @Suman
  Scenario: TC755353 - [RL0]
    Given I am on the input retro contract ID form
    When I am on the top of the form
    Then I must see the following new optional search fields along with the existing Contract ID
    And I can search by TIN
    And I can search by MPIN
    And I can search by NPI
    And I must be able to see the search results: Contract ID, Name, TIN, MPIN, NPI, Contract Name, Market, Site, Effective Date
    And I must be able to select one result to add to a workflow

  @TC868370
  @Manual
  @Functional
  @Visio
  @Suman
  Scenario: TC868370 - [RL1]
    Given I have searched contract for defined search parameters
    When there are no results based upon the criteria
    Then an error is displayed, "There are no results based upon your input. Please try again."

