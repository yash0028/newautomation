# Last updated on 
@EXARI-11271
@US1094104
@Plus
@releaseUnknown
@iterationUnknown
Feature: US1094104 - Approve Imported Entity Relationships

  @TC565893
  @Automated
  @Functional
  @EXARI-11271
  Scenario: TC565893 - [RL0]
    Given I am a User with Approval Authority
    When a User imports Entity relationships and submits for approval
    Then I can approve the Entity relationship import
    And the Entity relationships becomes active in the Entity Management Solution
    And I can reject the Entity relationship import
    And the Entity relationships are not added to the Entity Management Solution

