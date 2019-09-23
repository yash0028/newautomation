# Last updated on 
@US2026493
@2019.PI09
@2019.PI09.02
@releasePresent
@iterationPresent
Feature: US2026493 - Addition of "Edit" button on OCM Display - provider level (UI) - continuation

  @TC962603
  @Manual
  @Functional
  Scenario: TC962603 - [RL0]
    Given a user has clicked to view the contract configuration record in CMD
    When the user wants to update one of the data elements at the provider level
    Then the user can click to edit/open the configuration record
    And the user will be able to edit the contract master field at the provider level
    And the user will be able to edit the Role Type field at the provider level

  @TC962605
  @Manual
  @Functional
  Scenario: TC962605 - [RL1]
    Given a user has clicked to view the contract configuration record in CMD
    When the user wants to update one of the data elements at the provider level
    And the data element is not contract master or Role Type
    Then the user will not be able to edit the data

  @TC967056
  @Manual
  @Functional
  Scenario: TC967056 - [RL2]
    Given a user does not have the "CLM_CMD_NONPROD_CONFIG_EDIT_USERS" secure group
    When the user migrates to the contract config
    Then they will be not be able to edit any of the data

