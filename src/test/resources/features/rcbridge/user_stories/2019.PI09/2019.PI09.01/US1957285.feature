# Last updated on 
@US1957285
@2019.PI09
@2019.PI09.01
@releaseFuture
@iterationFuture
Feature: US1957285 - Send Network Role / PCP Indicator for each Provider on Roster to downstreams

  @TC922985
  @Manual
  @Functional
  Scenario: TC922985 - [RL0]
    Given the network role of a provider record is required by a user
    When the role has been determined
    Then the role is also included as part of the the NDB payload for each product group
    ###

  @RC_unlinked
  @TC922986
  @Manual
  @Functional
  Scenario: TC922986 - [RL1]
    Given Provider NetworkRole designation table is called
    When the roster provider record matches a record on the table
    Then the Provider NetworkRole has been determined
    And the Provider NetworkRole value from is stored as part of the provider OCM record

