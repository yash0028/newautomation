# Last updated on 
@EXARI-11271
@US1094095
Feature: US1094095 - Approve Updated Entity

  @TC564611
  @Automated
  @Functional
  Scenario: TC564611 - [RL0]
    Given I am a User with Approval Authority
    When a User updates an Entity and submits for approval
    Then I can approve the Entity updates
    And the approved Entity updates become active in the Entity Management Solution
    And I can reject the Entity updates
    And the Entity updates are routed back to the User for modifications

