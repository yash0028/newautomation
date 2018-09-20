# Last updated on 
@US1185989
Feature: US1185989 - Update Relationship Role

  @TC564864
  @Automated
  @Functional
  Scenario: TC564864 - [RL0]
    Given I am a User with access to maintain Entity information
    When I need to update a Relationship Role
    Then I have the ability to expire the current Relationship Role
    And I have the ability to select a new Relationship Role

