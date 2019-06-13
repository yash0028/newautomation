# Last updated on 
@Visio
@US1849466
@2019.PI08
@releaseFuture
@iterationUnknown
Feature: US1849466 - Create Search Delegate

  @TC846505
  @Manual
  @Functional
  @Visio
  Scenario: TC846505 - [RL0]
    Given I am using an Activity Manager process
    When I want to search contract for defined search parameters
    Then I must see the following new search fields
    And I can search by Counterparty Name
    And I can search by TIN
    And I can search by MPIN
    And I can search by NPI
    And I must be able to see the search results

