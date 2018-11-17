# Last updated on 
@EXARI-11249
@EXARI-11267
@US858616
@releaseUnknown
@iterationUnknown
Feature: US858616 - Search and Select Identifier

  @TC564650
  @Automated
  @Functional
  @EXARI-11249
  @EXARI-11267
  Scenario: TC564650 - [RL0]
    Given I am a User with access to maintain Entity information
    When I associate an Identifier to an Entity
    Then I must access the Entity
    And I must search for an Identifier
    And I can select an Identifier

