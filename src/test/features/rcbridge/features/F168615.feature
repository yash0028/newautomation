# Last updated on 2018-06-19T05:31:13.585Z
@MVP
Feature: F168615 - Integrate Exari with one central UHG location (Part 1)

  @2018.PI01
  @2018.PI01.05
  Scenario: US1072917
    Given The Physician contract is complete and correct within Exari
    When The contract is included in the Exari Physician Contract Payload to NDB
    Then NDB should load the Physician contract to the 'E' PNC contract screen successfully within NDB
