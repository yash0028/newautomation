# Last updated on 
@US1398671
@2018.PI05
@2018.PI05.05
@MVP
@Scrum_Team_1
@Maintenance
@releasePresent
@iterationFuture
Feature: US1398671 - Validation Process Add transacton to applicable platform(s)

  @TC645894
  @Manual
  @Functional
  Scenario: TC645894 - [RL0]
    Given a product group has been added to the contract
    When the contract is active
    Then product groups are added to each qualified provider record on the roster.
