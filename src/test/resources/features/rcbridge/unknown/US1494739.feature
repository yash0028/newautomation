# Last updated on 
@US1494739
@releaseUnknown
@iterationUnknown
Feature: US1494739 - Create Provider System ID - New Entity Structure

  @TC690132
  @Manual
  @Functional
  Scenario: TC690132 - [RL0]
    Given I am a User with access to maintain Entity information
    When I create a new Entity Structure
    Then the Entity Management Solution systematically generates a unique Provider System ID
    And the Provider System ID is associated to the new Entity Structure

