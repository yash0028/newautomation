# Last updated on 
@EXARI-11271
@US1094113
@releaseUnknown
@iterationUnknown
Feature: US1094113 - Approve Identifier Owner Assignment

  @TC564619
  @Automated
  @Functional
  @EXARI-11271
  Scenario: TC564619 - [RL0]
    Given I am a User with Approval Authority
    When a User adds an Owner to an Identifier and submits for approval
    Then I can approve the Owner assignment
    And the approved Owner assignment becomes active in the Entity Management Solution
    And I can reject the Owner assignment
    And the Owner assignment is routed back to the User for updates

