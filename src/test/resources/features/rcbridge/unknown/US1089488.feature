# Last updated on
@MVP
@EXARI-11267
@CLM_UAT
@US1089488
@MVP
@Plus
@Priority_1
@F183266
@releaseUnknown
@iterationUnknown
Feature: US1089488 - Update Operating License Type

  @TC565855
  @Automated
  @Functional
  @MVP
  @EXARI-11267
  @CLM_UAT
  @US1089488
  Scenario: TC565855 - [RL0]
    Given I am a User with access to maintain Entity information
    When I need to update an Entity Operating License Type
    Then I have the ability to expire the current Entity Operating License Type
    And I have the ability to select a new Entity Operating License Type

