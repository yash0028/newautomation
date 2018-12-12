# Last updated on 
@EXARI-11249
@EXARI-11267
@CLM_UAT
@US944247
@MVP
@Priority_4
@releaseUnknown
@iterationUnknown
Feature: US944247 - Capture Reason for Entity Inactivation

  @TC564480
  @Automated
  @Functional
  @EXARI-11249
  @EXARI-11267
  @CLM_UAT
  Scenario: TC564480 - [RL0]
    Given I am a User
    When I am inactivating an Entity
    Then I am required to provide a reason for inactivating the Entity prior to completing the inactivation

