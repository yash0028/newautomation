# Last updated on 
@EXARI-11249
@US858621
@releaseUnknown
@iterationUnknown
Feature: US858621 - Add Entity Demographic Info

  @TC565410
  @Automated
  @Functional
  @EXARI-11249
  Scenario: TC565410 - [RL0]
    Given I am a User with access to maintain Entities
    When I want to add demographic information to an Entity
    Then I can add Entity demographic information to the Entity
    And the added Entity demographic information enters the approval process workflow

