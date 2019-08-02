# Last updated on 
@US1957285
@2019.PI08
@2019.PI08.04
@releasePresent
@iterationFuture
Feature: US1957285 - Send Network Role / PCP Indicator for each Provider on Roster to downstreams

  @TC922985
  @Manual
  @Functional
  Scenario: TC922985 - [RL0]
    Given a contract record exists in Exari UCM
    When Provider NetworkRole is needed in the OCM record
    Then the PCP designation table is used

  @TC922986
  @Manual
  @Functional
  Scenario: TC922986 - [RL1]
    Given Provider NetworkRole designation table is called
    When the roster provider record matches a record on the table
    Then the Provider NetworkRole has been determined
    And the Provider NetworkRole value from is stored as part of the provider OCM record

