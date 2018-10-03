# Last updated on 
@MVP
@EXARI-11267
@CLM_UAT
@US1089504
@MVP
@Plus
@Priority_1
@F183266
Feature: US1089504 - Update Identifier

  @TC564404
  @Automated
  @Functional
  @MVP
  @EXARI-11267
  @CLM_UAT
  @US1089504
  Scenario: TC564404 - [RL0]
    Given I am a User with access to maintain Entity information
    When I need to update an Identifier
    Then I have the ability to expire the current Identifier
    And I have the ability to select a new Identifier

