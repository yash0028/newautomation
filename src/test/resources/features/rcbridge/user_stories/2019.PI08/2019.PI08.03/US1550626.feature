# Last updated on 
@#Optum
@Suman
@AM-Terminations
@US1550626
@2019.PI08
@2019.PI08.03
@releasePresent
@iterationFuture
Feature: US1550626 - Integrate search capability on Termination Process

  @TC743484
  @Manual
  @Functional
  @#Optum
  @Suman
  @AM-Terminations
  Scenario: TC743484 - [RL0]
    Given I start a new termination process
    When I am assigned contract search task
    Then I must see the following new search fields
    And I can search by Counterparty Name
    And I can search by TIN
    And I can search by MPIN
    And I can search by NPI
    And I must be able to see the search results: Contract ID, Name, TIN, MPIN, NPI, Contract Name, Market, Site, Effective Date
    And I must be able to select one or more results to add to a workflow

  @TC868373
  @Manual
  @Functional
  @#Optum
  @Suman
  @AM-Terminations
  Scenario: TC868373 - [RL1]
    Given I have searched contract for defined search parameters
    When there are no results based upon the criteria
    Then an error is displayed, "There are no results based upon your input. Please try again."

