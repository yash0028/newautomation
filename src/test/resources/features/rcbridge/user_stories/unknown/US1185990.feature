# Last updated on 
@US1185990
Feature: US1185990 - Update Characteristic Type

  @TC564538
  @Automated
  @Functional
  Scenario: TC564538 - [RL0]
    Given I am a User with access to maintain Entity information
    When I need to update a Characteristic Type
    Then I have the ability to expire the current Characteristic Type
    And I have the ability to select a new Characteristic Type

