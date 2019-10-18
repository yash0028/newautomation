# Last updated on 
@US2099358
@2019.PI09
@2019.PI09.05
@releasePresent
@iterationFuture
Feature: US2099358 - Type 2 Mass Actions Resolve Multiple UI/Backend Integration

  @TC1008967
  @Manual
  @Functional
  Scenario: TC1008967 - [RL0]
    Given a transaction on a contract with multiple type 2 errors
    When all errors are submitted for resolution
    Then one of the errors is successfully handled by the backend
    And the status of that error will be "submitted"
    And the status of that error will be changed to "resolved" once completed
    And the status of the other selected errors will be changed to "submitted"
    And the status of the other selected errors will be changed to "resolved" once completed

  @TC1008970
  @Manual
  @Functional
  Scenario: TC1008970 - [RL1]
    Given a transaction on a contract with multiple type 2 errors
    When all errors are submitted for resolution
    Then one of the errors is unsuccessfully handled by the backend
    And the status of that error will be "submitted"
    And the status of that error will be changed to "failed" once completed

