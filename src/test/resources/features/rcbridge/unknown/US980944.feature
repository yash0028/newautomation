# Last updated on 
@EXARI-11249
@US980944
@releaseUnknown
@iterationUnknown
Feature: US980944 - Add Provider Relationship Role

  @TC565175
  @Automated
  @Functional
  @EXARI-11249
  Scenario: TC565175 - [RL0]
    Given I am a User with access to maintain Entity information
    When I am adding a relationship between a Provider and an Entity
    Then I can define the Relationship Role the Provider has in relation to the Entity

