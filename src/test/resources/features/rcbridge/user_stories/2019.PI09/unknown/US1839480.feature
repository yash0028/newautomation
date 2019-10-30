# Last updated on 
@Go_Live
@US1839480
@2019.PI09
@releasePresent
@iterationUnknown
Feature: US1839480 - Reassign tasks

  @TC1030016
  @Manual
  @Functional
  @Go_Live
  Scenario: TC1030016 - [RL0]
    Given tasks are assigned to a person
    When it is determined that their tasks needs to be moved to other people
    Then they can be reassigned to another user in bulk
    And they can reassigned to another user one at a time

