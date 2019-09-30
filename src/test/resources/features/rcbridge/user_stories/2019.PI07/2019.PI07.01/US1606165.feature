# Last updated on 
@US1606165
@2019.PI07
@2019.PI07.01
@releasePast
@iterationPast
Feature: US1606165 - Update CMD application to leverage the additional roles (Supporting)

  @TC793509
  @Manual
  @Functional
  Scenario: TC793509 - [RL0]
    Given that the newly defined roles for CMD have been created and the older roles have removed
    When a user goes into Secure for CMD application has successfully obtained the new role (by environment) selected
    And SiteMinder has been updated to recognize the new roles for access to CMD
    Then the user can access the CMD application with these new roles and this user story will be considered complete.

  @TC796858
  @Manual
  @Functional
  Scenario: TC796858 - [RL1] Validate Network role
    Given I am a user with the CLM_PHY_CMD_NET_USERS_NONPRD role
    When I am in CMD
    Then I have read-only access to the action required items
    And I cannot access the Reference Data pages

  @TC796859
  @Manual
  @Functional
  Scenario: TC796859 - [RL2] Validate Business role
    Given I am a user with the CLM_PHY_CMD_BUS_USERS_NONPRD role
    When I am in CMD
    Then I have edit access to the action required items
    And I cannot access the Reference Data pages

  @TC804135
  @Manual
  @Functional
  Scenario: TC804135 - [RL3] Validate OPS role
    Given I am a user with the CLM_PHY_CMD_OPS_USERS_NONPRD role
    When I am in CMD
    Then I have edit access to the action required items
    And I can access the Reference Data pages

