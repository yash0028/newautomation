# Last updated on 
@US1452114
@releaseUnknown
@iterationUnknown
Feature: US1452114 - Project ID

  @TC672165
  @Manual
  @Functional
  Scenario: TC672165 - [RL0]
    Given I am an Administrative User
    When an Entity becomes part of a Project
    Then I have the ability to update the Project ID on an Entity
    And the Project ID is visible to all Users

