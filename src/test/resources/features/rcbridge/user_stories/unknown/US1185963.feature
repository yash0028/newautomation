# Last updated on 
@US1185963
Feature: US1185963 - Select Identifier Type

  @TC564820
  @Automated
  @Functional
  Scenario: TC564820 - [RL0]
    Given I am a User with access to maintain Entity information
    When I am adding an Identifier to an Entity
    Then I must select an Identifier Type

