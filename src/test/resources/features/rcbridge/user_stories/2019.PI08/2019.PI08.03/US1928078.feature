# Last updated on 
@US1928078
@2019.PI08
@2019.PI08.03
@releasePresent
@iterationPresent
Feature: US1928078 - Addition of "Edit" button on OCM Display - provider level

  @TC903969
  @Manual
  @Functional
  Scenario: TC903969 - [RL0]
    Given a user has clicked to view the contract configuration record in CMD
    When the user wants to update one of the data elements at the provider level
    Then the user can click to edit/open the configuration record
    And the user will be able to edit the contract master field at the provider level
    And the user will be able to edit the COSMOS network number field at the provider level
    And the user will be able to edit the ConArr field at the provider level
    And the user will be able to edit the GTN field at the provider level
    And the user will be able to edit the Role Type field at the provider level

  @TC903970
  @Manual
  @Functional
  Scenario: TC903970 - [RL1]
    Given a user has clicked to view the contract configuration record in CMD
    When the user wants to update one of the data elements at the provider level
    And the data element is not contract master, network number, ConArr, GTN, Role Type
    Then the user will not be able to edit the data

