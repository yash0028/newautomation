# Last updated on 
@Visio
@Suman
@US1849466
@2019.PI08
@2019.PI08.01
@releasePresent
@iterationPresent
Feature: US1849466 - Create Search Delegate

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

