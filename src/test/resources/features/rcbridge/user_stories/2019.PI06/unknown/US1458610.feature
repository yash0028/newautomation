# Last updated on 
@Exari
@US1458610
@2019.PI06
@releasePresent
@iterationUnknown
Feature: US1458610 - Assign workflow to contract owner

  @TC743421
  @Manual
  @Functional
  @Exari
  Scenario: TC743421 - [RL0]
    Given a workflow instance is created by the system
    When the contract owner is pulled from the API
    Then the contract owners name is populated in the Assignee field
    Given a new workflow instance is created
    When the system is the creator
    Then the contract owners name is populated in the Assignee field

