# Last updated on 
@US927841
@Plus
@Priority_1
@releaseUnknown
@iterationUnknown
Feature: US927841 - Capture Relationship Time Lining History

  @TC565028
  @Automated
  @Functional
  Scenario: TC565028 - [RL0]
    Given I am the Entity Management Solution
    When a User adds a relationship between a Provider and an Entity
    And a User updates a relationship between a Provider and an Entity
    And a User removes a relationship between a Provider and an Entity
    Then I capture the effective date of the relationship
    And I capture the end date of the relationship
    And I capture the User who performed the change
    And I capture the time and date of when the User performed the change

