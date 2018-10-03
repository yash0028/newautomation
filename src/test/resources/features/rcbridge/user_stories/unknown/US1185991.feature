# Last updated on 
@US1185991
@MVP
@Plus
@Priority_1
@F183266
Feature: US1185991 - Update Account Type

  @TC565754
  @Automated
  @Functional
  @US1185991
  Scenario: TC565754 - [RL0]
    Given I am a User with access to maintain Entity information
    When I need to update a Account Type
    Then I have the ability to expire the current Account Type
    And I have the ability to select a new Account Type

