# Last updated on 
@US980966
@Plus
@Priority_1
@releaseUnknown
@iterationUnknown
Feature: US980966 - Add Provider Relationship Type

  @TC564802
  @Automated
  @Functional
  Scenario: TC564802 - [RL0]
    Given I am a User with access to maintain Entity information
    When I am adding a relationship between a Provider and an Entity
    Then I can select a Relationship Type to further define the relationship between the Provider and the Entity

