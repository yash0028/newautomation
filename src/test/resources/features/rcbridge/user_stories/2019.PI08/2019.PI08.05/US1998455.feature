# Last updated on 
@US1998455
@2019.PI08
@2019.PI08.05
@releasePresent
@iterationPresent
Feature: US1998455 - Addition of "Edit" button on OCM Display - contract level (UI) - continued

  @TC944987
  @Manual
  @Functional
  Scenario: TC944987 - [RL0]
    Given a user has clicked to view the contract configuration record in CMD
    When the user wants to update one of the data elements at the contract level
    Then the user can click to edit/open the configuration record
    And the user will be able to edit the contract master field at the contract level
    And the user will be able to edit the COSMOS network number field at the contract level
    And the user will be able to edit the ConArr field at the contract level
    And the user will be able to edit the GTN field at the contract level
    And the user will be able to edit the FPT field at the contract level

  @TC944989
  @Manual
  @Functional
  Scenario: TC944989 - [RL1]
    Given a user has clicked to view the contract configuration record in CMD
    When the user wants to update one of the data elements at the contract level
    And the data element is not contract master, network number, ConArr, GTN, FPT
    Then the user will not be able to edit the data

