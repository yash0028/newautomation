# Last updated on 
@US1806699
@2019.PI08
@2019.PI08.03
@releasePresent
@iterationFuture
Feature: US1806699 - CMD Determine PCP Indicator for each Provider on Roster Based on Market

  @TC909546
  @Manual
  @Functional
  Scenario: TC909546 - [RL0]
    Given a contract record exists in Exari UCM
    When Provider NetworkRole is needed in the OCM record
    Then the PCP designation table is used

  @TC909553
  @Manual
  @Functional
  Scenario: TC909553 - [RL1]
    Given Provider NetworkRole designation table is called
    When the roster provider record matches a record on the table
    Then the Provider NetworkRole has been determined
    And the Provider NetworkRole value from is stored as part of the provider OCM record

