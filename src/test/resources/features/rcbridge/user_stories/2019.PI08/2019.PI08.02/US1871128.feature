# Last updated on 
@US1871128
@2019.PI08
@2019.PI08.02
@releasePresent
@iterationFuture
Feature: US1871128 - Determine system or platform where action needs to be taken

  @TC874544
  @Manual
  @Functional
  Scenario: TC874544 - [RL0]
    Given a user encounters an error
    Then the user should know where to resolve the error.
    #The system or source that generates the error. From user standpoint: if error occurs where user should go to resolve error.

