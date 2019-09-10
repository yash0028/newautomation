# Last updated on 
@#Optum
@Suman
@Go_Live
@AM-Terminations
@US1550626
@2019.PI09
@releasePresent
@iterationUnknown
Feature: US1550626 - Integrate search capability on Termination Process

  @TC868373
  @Manual
  @Functional
  @#Optum
  @Suman
  @Go_Live
  @AM-Terminations
  Scenario: TC868373 - [RL1]
    Given I have searched contract for defined search parameters
    When there are no results based upon the criteria
    Then an error is displayed, "There are no results based upon your input. Please try again."

