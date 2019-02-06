# Last updated on 
@MVP
@US1311685
@2019.PI06
@releaseFuture
@iterationUnknown
Feature: US1311685 - Med Nec clause table update API to NDB  - Facility

  @TC701677
  @Manual
  @Functional
  @MVP
  Scenario: TC701677 - [RL0]
    Given the med nec clause code record has been updated in the table
    When the update has been recorded in CMD
    Then the API service is initiated to notify NDB of the update

