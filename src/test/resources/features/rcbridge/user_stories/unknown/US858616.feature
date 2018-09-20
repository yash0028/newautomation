# Last updated on 
@EXARI-11249
@EXARI-11267
@US858616
Feature: US858616 - Add Identifier to Entity

  @TC564650
  @Automated
  @Functional
  Scenario: TC564650 - [RL0]
    Given I am a User with access to maintain Entity information
    When I add an Identifier to an Entity
    Then I must access the Entity
    And I must select an Identifier Type to define the type of Identifier I am adding
    And I can enter an Identifier

