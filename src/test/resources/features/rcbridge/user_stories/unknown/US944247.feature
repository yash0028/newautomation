# Last updated on 
@MVP
@EXARI-11267
@EXARI-11249
@CLM_UAT
@US944247
Feature: US944247 - Capture Reason for Entity Inactivation

  @TC564480
  @Automated
  @Functional
  Scenario: TC564480 - [RL0]
    Given I am a User
    When I am inactivating an Entity
    Then I am required to provide a reason for inactivating the Entity prior to completing the inactivation

