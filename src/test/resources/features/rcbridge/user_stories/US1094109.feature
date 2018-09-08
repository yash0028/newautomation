# Last updated on 
@EXARI-11271
@US1094109
Feature: US1094109 - Approve Added Entity Characteristic Info

  @TC565656
  @Automated
  @Functional
  Scenario: TC565656 - [RL0]
    Given I am a User with Approval Authority
    When a User adds a Entity Characteristic information and submits for approval
    Then I can approve the Entity Characteristic information
    And the approved Entity Characteristic information becomes active in the Entity Management Solution
    And I can reject the Entity Characteristic information
    And the Entity Characteristic information is routed back to the User for updates

