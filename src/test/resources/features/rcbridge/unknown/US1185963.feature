# Last updated on 
@MVP
@US1185963
@MVP
@Plus
@Priority_1
@releaseUnknown
@iterationUnknown
Feature: US1185963 - Display Identifier Type

  @TC564820
  @Automated
  @Functional
  @MVP
  Scenario: TC564820 - [RL0]
    Given I am a User with access to maintain Entity information
    When I am adding an Identifier to an Entity
    Then the Entity Management Solution displays the Identifier Type of the selected Identifier

