# Last updated on 
@Visio
@Suman
@US1849534
@2019.PI08
@2019.PI08.02
@releasePresent
@iterationFuture
Feature: US1849534 - Integrate search capability on Physician Process

  @TC861697
  @Manual
  @Functional
  @Visio
  @Suman
  Scenario: TC861697 - [RL1]
    Given I have searched contract for defined search parameters
    When there are no results based upon the criteria
    Then an error is displayed, "There are no results based upon your input. Please try again."

  @TC861699
  @Manual
  @Functional
  @Visio
  @Suman
  Scenario: TC861699 - [RL2]
    Given I have searched contract for defined search parameters
    When there are no results due to API error
    Then an error is displayed, "The system encountered an error. Please try again. If it persists please contact the system administrator."

