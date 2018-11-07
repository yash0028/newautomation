# Last updated on 
@US1364645
@releaseUnknown
@iterationUnknown
Feature: US1364645 - Stage and Prod Managed DB Cluster

  @TC599670
  @Manual
  @Functional
  Scenario: TC599670 - [RL0]
    Given that a user needs to utilize a database,
    When the database connection is made,
    Then it connects to a stable MySQL Percona Cluster

