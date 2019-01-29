# Last updated on 
@US1508222
@MVP
@N/A
@releaseUnknown
@iterationUnknown
Feature: US1508222 - PEX Approval for DBs

  @TC690144
  @Manual
  @Functional
  Scenario: TC690144 - [RL0]
    Given we have a managed DB,
    When we need to add/drop a table,
    Then our service accounts have access to do so

