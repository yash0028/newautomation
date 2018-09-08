# Last updated on 
@MVP
@EXARI-11267
@CLM_UAT
@US1089504
Feature: US1089504 - Update Identifier

  @TC564404
  @Automated
  @Functional
  Scenario: TC564404 - [RL0]
    Given I am a User with access to maintain Entity information
    When I need to update an Identifier
    Then I have the ability to expire the current Identifier
    And I have the ability to select a new Identifier

