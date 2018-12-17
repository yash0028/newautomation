# Last updated on 
@US1479212
@releaseUnknown
@iterationUnknown
Feature: US1479212 - Deactivate Entity Manager

  @TC672222
  @Manual
  @Functional
  Scenario: TC672222 - [RL0]
    Given I am a User with access to maintain Entity information
    When an Entity Manager no longer is involved with an Entity
    Then I have the ability to deactivate the Entity Manager from the Entity

