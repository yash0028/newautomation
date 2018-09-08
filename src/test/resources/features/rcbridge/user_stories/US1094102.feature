# Last updated on 
@EXARI-11271
@US1094102
Feature: US1094102 - Approve Imported Entity Structure

  @TC565330
  @Automated
  @Functional
  Scenario: TC565330 - [RL0]
    Given I am a User with Approval Authority
    When a User imports an Entity structure and submits for approval
    Then I can approve the Entity structure import
    And the Entity structure becomes active in the Entity Management Solution
    And I can reject the Entity structure import
    And the Entity is not added to the Entity Management Solution

