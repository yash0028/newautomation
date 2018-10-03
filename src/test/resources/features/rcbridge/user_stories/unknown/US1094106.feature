# Last updated on 
@EXARI-11271
@US1094106
@Plus
@F137658
Feature: US1094106 - Approve Updated Entity Demographic Info

  @TC564893
  @Automated
  @Functional
  @EXARI-11271
  @US1094106
  Scenario: TC564893 - [RL0]
    Given I am a User with Approval Authority
    When a User updates a Entity Demographic information and submits for approval
    Then I can approve the updated Entity Demographic information
    And the approved Entity Demographic information becomes active in the Entity Management Solution
    And I can reject the Entity Demographic information updates
    And the Entity Demographic informationupdates are routed back to the User for modifications

