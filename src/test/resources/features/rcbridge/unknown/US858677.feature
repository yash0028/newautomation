# Last updated on 
@US858677
@Plus
@releaseUnknown
@iterationUnknown
Feature: US858677 - Remove Provider Relationship

  @TC565520
  @Automated
  @Functional
  Scenario: TC565520 - [RL0]
    Given I am a User with access to maintain Entity information
    When I need to end a relationship between a Provider and an Entity
    Then I can remove the relationship between the Provider and the Entity

