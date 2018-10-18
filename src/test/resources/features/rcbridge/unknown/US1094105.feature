# Last updated on
@EXARI-11271
@US1094105
@Plus
@F137658
@releaseUnknown
@iterationUnknown
Feature: US1094105 - Approve Added Entity Demographic Info

  @TC565259
  @Automated
  @Functional
  @EXARI-11271
  @US1094105
  Scenario: TC565259 - [RL0]
    Given I am a User with Approval Authority
    When a User adds a Entity Demographic information and submits for approval
    Then I can approve the Entity Demographic information
    And the approved Entity Demographic information becomes active in the Entity Management Solution
    And I can reject the Entity Demographic information
    And the Entity Demographic information is routed back to the User for updates

