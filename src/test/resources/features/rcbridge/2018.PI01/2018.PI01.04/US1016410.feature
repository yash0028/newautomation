# Last updated on 
@US1016410
@2018.PI01
@2018.PI01.04
@MVP
@releasePast
@iterationPast
Feature: US1016410 - Exari>NDB Physician payload data

  @TC701618
  @Manual
  @Functional
  Scenario: TC701618 - [RL0]
    Given The Physician contract is complete and correct within Exari
    When The contract is included in the Exari Physician Contract ETL to NDB
    Then NDB should load the contract to the 'E' PNC contract screen successfully within NDB

