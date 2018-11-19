# Last updated on 
@MVP
@US1442232
@MVP
@Plus
@Priority_1
@releaseUnknown
@iterationUnknown
Feature: US1442232 - Create Relationship

  @TC646545
  @Manual
  @Functional
  @MVP
  Scenario: TC646545 - [RL0]
    Given I am a User with access to maintain Entity information
    When I need to create a relationship between two Entities
    Then I can enter an effective date on which to begin the relationship
    And the relationship effective date is stored on each Entity in the relationship

