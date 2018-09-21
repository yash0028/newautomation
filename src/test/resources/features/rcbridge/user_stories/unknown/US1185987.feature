# Last updated on 
@US1185987
Feature: US1185987 - Update Relationship Type

  @TC565570
  @Automated
  @Functional
  Scenario: TC565570 - [RL0]
    Given I am a User with access to maintain Entity information
    When I need to update a Relationship Type
    Then I have the ability to expire the current Relationship Type
    And I have the ability to select a new Relationship Type

