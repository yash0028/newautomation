# Last updated on 
@US2099302
@2019.PI09
@2019.PI09.04
@releasePresent
@iterationPresent
Feature: US2099302 - Type 2 Regular Resolve Multiple UI/Backend Integration

  @TC1008968
  @Manual
  @Functional
  Scenario: TC1008968 - [RL0]
    Given a transaction on a contract with multiple type 2 errors
    When multiple errors are selected and submitted for resolution
    Then one of the errors is successfully handled by the backend
    And the status of that error will be "submitted"
    And the status of that error will be changed to "resolved" once completed
    And the status of the other selected errors will be changed to "submitted"
    And the status of the other selected errors will be changed to "resolved" once completed

  @TC1008971
  @Manual
  @Functional
  Scenario: TC1008971 - [RL1]
    Given a transaction on a contract with multiple type 2 errors
    When multiple errors are selected and submitted for resolution
    Then one of the errors is unsuccessfully handled by the backend
    And the status of that error will be "submitted"
    And the status of that error will be changed to "failed" once completed

