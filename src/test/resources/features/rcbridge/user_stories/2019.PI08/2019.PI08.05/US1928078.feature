# Last updated on 
@US1928078
@2019.PI08
@2019.PI08.05
@releasePast
@iterationPast
Feature: US1928078 - Addition of "Edit" button on OCM Display - provider level (UI)

  @TC903969
  @Manual
  @Functional
  Scenario: TC903969 - [RL0]
    Given a user has clicked to view the contract configuration record in CMD
    When the user wants to update one of the data elements at the provider level
    And the user has appropriate access
    Then the user can click to edit/open the configuration record
    And the user will be able to edit the contract master field at the provider level
    And the user will be able to edit the Role Type field at the provider level

  @TC903970
  @Manual
  @Functional
  Scenario: TC903970 - [RL1]
    Given a user has clicked to view the contract configuration record in CMD
    When the user wants to update the contract master at the provider level
    And the user has appropriate access
    Then the user will be able to select a contract master from a drop down list
    And the drop down list will be limited to the contract-level contract masters for that ProductGroup
    And the display will include the contract master number
    And the display will include the contract master name

  @TC998206
  @Manual
  @Functional
  Scenario: TC998206 - [RL2]
    Given a user has clicked to view the contract configuration record in CMD
    When the user wants to update the role type at the provider level
    And the user has appropriate access
    Then the user will be able to select the role type for the provider
    And the role type value options (P, S) will be displayed in a drop down list
    And the role type will be selected/determined at a ProductGroup level

  @TC998207
  @Manual
  @Functional
  Scenario: TC998207 - [RL3]
    Given a user has made an edit to the configuration record
    Then a confirmation of the changes will be displayed to the user before the changes are made
    And the confirmation will include the current value(s)
    And the confirmation will include the changed/selected value(s)

  @TC998208
  @Manual
  @Functional
  Scenario: TC998208 - [RL4]
    Given a user has clicked to view the contract configuration record in CMD
    When the user wants to update one of the data elements at the provider level
    And the data element is not contract master, network number, ConArr, GTN, Role Type
    Then the user will not be able to edit the data

