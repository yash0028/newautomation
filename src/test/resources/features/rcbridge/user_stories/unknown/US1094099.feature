# Last updated on 
@EXARI-11271
@US1094099
@Plus
@F137658
Feature: US1094099 - Approve Updated Identifier

  @TC564702
  @Automated
  @Functional
  @EXARI-11271
  @US1094099
  Scenario: TC564702 - [RL0]
    Given I am a User with Approval Authority
    When a User updates an Identifier and submits for approval
    Then I can approve the Identifier updates
    And the approved Identifier updates become active in the Entity Management Solution
    And I can reject the Identifier updates
    And the Identifier updates are routed back to the User for modifications

