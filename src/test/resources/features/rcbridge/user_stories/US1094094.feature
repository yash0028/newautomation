# Last updated on 
@EXARI-11271
@US1094094
Feature: US1094094 - Approve Added Entity

  @TC565723
  @Automated
  @Functional
  Scenario: TC565723 - [RL0]
    Given I am a User with Approval Authority
    When a User adds an Entity and submits for approval
    Then I can approve the Entity
    And the approved Entity becomes active in the Entity Management Solution
    And I can reject the Entity
    And the Entity is routed back to the User for updates

