# Last updated on 
@US858675
@Plus
@Priority_1
@releaseUnknown
@iterationUnknown
Feature: US858675 - Update Provider Relationship

  @TC565385
  @Automated
  @Functional
  Scenario: TC565385 - [RL0]
    Given I am a User with access to maintain Entity information
    When I need to change a relationship between an Entity and a Provider
    Then I can select a new Relationship Role for a Provider in the relationship
    And I can select a new Relationship Type for a Provider in the relationship

