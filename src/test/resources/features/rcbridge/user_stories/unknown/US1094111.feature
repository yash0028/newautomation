# Last updated on 
@EXARI-11271
@US1094111
Feature: US1094111 - Approve Updated Entity Characteristic Info

  @TC565740
  @Automated
  @Functional
  Scenario: TC565740 - [RL0]
    Given I am a User with Approval Authority
    When a User updates a Entity Characteristic information and submits for approval
    Then I can approve the updated Entity Characteristic information
    And the approved Entity Characteristic information becomes active in the Entity Management Solution
    And I can reject the Entity Characteristic information updates
    And the Entity Characteristicinformation updates are routed back to the User for modifications

