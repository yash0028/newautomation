# Last updated on 
@Exari
@Go_Live
@US1979410
@2019.PI09
@releasePresent
@iterationUnknown
Feature: US1979410 - Reassign processes

  @TC1030015
  @Manual
  @Functional
  @Exari
  @Go_Live
  Scenario: TC1030015 - [RL0]
    Given a process is assigned to a person
    When it is determined that their processes need to be moved to other people
    Then they can be reassigned to another user in bulk
    And they can reassigned to another user one at a time

