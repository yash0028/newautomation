# Last updated on 
@US1185991
@2018.PI03
Feature: US1185991 - Update Account Type

  @TC565754
  @Automated
  @Functional
  Scenario: TC565754 - [RL0]
    Given I am a User with access to maintain Entity information
    When I need to update a Account Type
    Then I have the ability to expire the current Account Type
    And I have the ability to select a new Account Type
