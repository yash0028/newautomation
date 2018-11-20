# Last updated on 
@MVP
@EXARI-11273
@US858668
@MVP
@Plus
@Priority_1
@releaseUnknown
@iterationUnknown
Feature: US858668 - Capture Relationship Time Lining History

  @TC564645
  @Automated
  @Functional
  @MVP
  @EXARI-11273
  Scenario: TC564645 - [RL0]
    Given I am the Entity Management Solution
    When a User creates a relationship between two Entities
    And a User removes a relationship between two Entities
    Then I capture the effective date of the relationship
    And I capture the end date of the relationship
    And I capture the User who performed the change
    And I capture the time and date of when the User performed the change

