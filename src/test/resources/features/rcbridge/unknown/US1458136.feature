# Last updated on 
@MVP
@US1458136
@MVP
@releaseUnknown
@iterationUnknown
Feature: US1458136 - Perform Duplicate Check - Entity

  @TC658869
  @Manual
  @Functional
  @MVP
  Scenario: TC658869 - [RL0]
    Given I am the Entity Management Solution
    When a User adds an Entity
    Then I check against all active and inactive records for duplicate Entities
    And if duplicate Entity exists, the User receives a notification to use existing Entity
    And if duplicate Entity does not exist, the User is allowed to proceed and create new

