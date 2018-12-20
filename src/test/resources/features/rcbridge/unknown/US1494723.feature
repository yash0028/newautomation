# Last updated on 
@US1494723
@releaseUnknown
@iterationUnknown
Feature: US1494723 - Remove Provider System ID - Removed Entity from Existing Entity Structure

  @TC680486
  @Manual
  @Functional
  Scenario: TC680486 - [RL0]
    Given I am a User
    When I remove an Entity from an existing Entity Structure
    Then the Provider System ID for that Entity Structure is systematically deactivated on the removed Entity
    And the Provider System ID is still visible on the Entity in an expired state

