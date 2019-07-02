# Last updated on 
@Visio
@US1615475
@2019.PI08
@2019.PI08.02
@releasePresent
@iterationFuture
Feature: US1615475 - Integrate search capability on Retro Process

  @TC868370
  @Manual
  @Functional
  @Visio
  Scenario: TC868370 - [RL1]
    Given I have searched contract for defined search parameters
    When there are no results based upon the criteria
    Then an error is displayed, "There are no results based upon your input. Please try again."

