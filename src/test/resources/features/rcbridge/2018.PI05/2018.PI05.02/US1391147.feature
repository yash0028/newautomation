# Last updated on 
@US1391147
@2018.PI05
@2018.PI05.02
@MVP
@Scrum_Team_1
@Maintenance
@releasePresent
@iterationPresent
Feature: US1391147 - Receive and recognize contract update terms from Exari

  @TC616508
  @Manual
  @Functional
  Scenario: TC616508 - [RL0]
    Given the OCM is subscribed to the Exari Business Event Type "RosterUpdated"
    When an "UpdateRoster" transaction is published
    Then OCM will recognize this transaction
    And OCM will trigger the data validation of the published roster data

