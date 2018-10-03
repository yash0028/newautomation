# Last updated on 
@MVP
@EXARI-11267
@EXARI-11249
@CLM_UAT
@US944247
@MVP
@Plus
@Priority_1
@F152967
Feature: US944247 - Capture Reason for Entity Inactivation

  @TC564480
  @Automated
  @Functional
  @MVP
  @EXARI-11267
  @EXARI-11249
  @CLM_UAT
  @US944247
  Scenario: TC564480 - [RL0]
    Given I am a User
    When I am inactivating an Entity
    Then I am required to provide a reason for inactivating the Entity prior to completing the inactivation

