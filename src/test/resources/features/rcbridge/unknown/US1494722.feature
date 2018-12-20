# Last updated on 
@US1494722
@releaseUnknown
@iterationUnknown
Feature: US1494722 - Add Provider System ID - New Entity to Existing Entity Structure

  @TC680485
  @Manual
  @Functional
  Scenario: TC680485 - [RL0]
    Given I am a User
    When I add an Entity to an existing Entity Structure
    Then the Provider System ID for that Entity Structure is systematically added to the new Entity

