# Last updated on 
@MVP
@EXARI-11267
@CLM_UAT
@US1089502
@MVP
@Plus
@Priority_1
@F183266
@releaseUnknown
@iterationUnknown
Feature: US1089502 - Update Entity Type

  @TC564981
  @Automated
  @Functional
  @MVP
  @EXARI-11267
  @CLM_UAT
  @US1089502
  Scenario: TC564981 - [RL0]
    Given I am a User with access to maintain Entity information
    When I need to update an Entity Type
    Then I have the ability to expire the current Entity Type
    And I have the ability to select a new Entity Type

