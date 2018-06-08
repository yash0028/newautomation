# Last updated on 2018-06-07T18:56:29.267Z
@MVP
@Parity
Feature: F182837 - Domain MS Exari>NDB Physician Contracting Loading - Payload

  @2018.PI01
  @2018.PI01.05
  Scenario: US1072917
    Given The Physician contract is complete and correct within Exari
    When The contract is included in the Exari Physician Contract Payload to NDB
    Then NDB should load the Physician contract to the 'E' PNC contract screen successfully within NDB

