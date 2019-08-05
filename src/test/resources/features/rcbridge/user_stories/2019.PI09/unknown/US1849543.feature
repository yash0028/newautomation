# Last updated on 
@Visio
@Suman
@US1849543
@2019.PI09
@releaseFuture
@iterationUnknown
Feature: US1849543 - Integrate search capability on Escalator Process

  @TC868376
  @Manual
  @Functional
  @Visio
  @Suman
  Scenario: TC868376 - [RL1]
    Given I have searched contract for defined search parameters
    When there are no results based upon the criteria
    Then an error is displayed, "There are no results based upon your input. Please try again."

