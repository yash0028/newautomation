# Last updated on 
@US1846694
@2019.PI07
@2019.PI07.05
@releasePresent
@iterationPresent
Feature: US1846694 - Refinement on role priviledges in CMD application

  @TC845080
  @Manual
  @Functional
  Scenario: TC845080 - [RL0]
    Given that the newly defined roles for CMD have been created and the older roles have removed
    When a user goes into Secure for CMD application has successfully obtained the new role (by environment) selected
    And SiteMinder has been updated to recognize the new roles for access to CMD
    Then the user can access the CMD application with these new roles and this user story will be considered complete.

  @TC845081
  @Manual
  @Functional
  Scenario: TC845081 - [RL1]
    Given I am a user with the CLM_PHY_CMD_NET_USERS_NONPRD role
    When I am in CMD
    Then I have read-only access to the action required items in all non prod environments.
    And I cannot access the Reference Data pages

  @TC845082
  @Manual
  @Functional
  Scenario: TC845082 - [RL2]
    Given I am a user with the CLM_PHY_CMD_BUS_USERS_NONPRD role
    When I am in CMD
    Then I have READ-ONLY access to the payload transaction items in all non-prod environments
    And I can fully access and maintain the Reference Data pages in all non-prod enviornmens

  @TC845083
  @Manual
  @Functional
  Scenario: TC845083 - [RL3]
    Given I am a user with the CLM_PHY_CMD_OPS_USERS_NONPRD role
    When I am in CMD
    Then I have full access to update/maintain to the action required items in Transactional Payload data in all Non-prod environments
    And I cannot access the Reference Data pages

  @TC845084
  @Manual
  @Functional
  Scenario: TC845084 - [RL4]
    Given I am a user with the CLM_PHY_CMD_NET_USERS_PRD role
    When I am in CMD
    Then I have read-only access to the action required items in Production env.
    And I cannot access the Reference Data pages

  @TC845085
  @Manual
  @Functional
  Scenario: TC845085 - [RL5]
    Given I am a user with the CLM_PHY_CMD_BUS_USERS_PRD role
    When I am in CMD
    Then I have READ-ONLY access to the payload transaction items in the Prod environment
    And I can fully access and maintain the Reference Data pages in the Prod environment

  @TC845086
  @Manual
  @Functional
  Scenario: TC845086 - [RL6]
    Given I am a user with the CLM_PHY_CMD_OPS_USERS_PRD role
    When I am in CMD
    Then I have full access to update/maintain to the action required items in Transactional Payload data in Prod environment
    And I cannot access the Reference Data pages in the Prod environment

