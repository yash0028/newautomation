# Last updated on 
@US1094114
@Plus
@F137658
Feature: US1094114 - Approve Identifier Owner Inactivation

  @TC565295
  @Automated
  @Functional
  @US1094114
  Scenario: TC565295 - [RL0]
    Given I am a User with Approval Authority
    When a User inactivates an Owner from an Identifier and submits for approval
    Then I can approve the Owner assignment inactivation
    And the Owner assignment becomes inactive in the Entity Management Solution
    And I can reject the Owner assignment inactivation
    And the Owner assignment inactivation is routed back to the User for updates

