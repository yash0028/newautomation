# Last updated on 
@EXARI-11271
@US1094097
@releaseUnknown
@iterationUnknown
Feature: US1094097 - Approve Added Identifier

  @TC564911
  @Automated
  @Functional
  @EXARI-11271
  Scenario: TC564911 - [RL0]
    Given I am a User with Approval Authority
    When a User adds an Identifier and submits for approval
    Then I can approve the Identifier
    And the approved Identifier becomes active in the Entity Management Solution
    And I can reject the Identifier
    And the Identifier is routed back to the User for updates

