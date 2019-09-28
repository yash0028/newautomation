# Last updated on 
@US1924528
@2019.PI08
@2019.PI08.04
@releasePast
@iterationPast
Feature: US1924528 - Addition of "Edit" button on OCM Display - contract level (UI)

  @TC902689
  @Manual
  @Functional
  Scenario: TC902689 - [RL0]
    Given a user has clicked to view the contract configuration record in CMD
    When the user wants to update one of the data elements at the contract level
    And the user has appropriate access
    Then the user can view editable fields within the confirmation record
    And the user will be able to edit the contract master field at the contract level

  @TC902702
  @Manual
  @Functional
  Scenario: TC902702 - [RL1]
    Given a user has clicked to view the contract configuration record in CMD
    When the user wants to update the contract master contract level
    And the user has appropriate access
    Then the user can either select a contract master from a drop down list
    And the user can type in a contract master value

  @TC998205
  @Manual
  @Functional
  Scenario: TC998205 - [RL2]
    Given a user has made an edit to the configuration record
    Then a confirmation of the changes will be displayed to the user before the changes are made
    And the confirmation will include the current value(s)
    And the confirmation will include the changed/selected value(s)

