# Last updated on 2018-07-27T19:41:36.223Z
@MVP
@10/1_Physician
Feature: F207419 - Integration Services - ETMA legacy data tables and code lists

  @MVP
  @2018.PI03
  @2018.PI03.03
  Scenario: US1229421::0
    Given the market number is listed in the Market UHC table
    When a query to the table is initiated
    Then the query response includes the market record information

  @MVP
  @2018.PI03
  @2018.PI03.03
  Scenario: US1229421::1
    Given the market number is not listed in the Market UHC table
    When a query to the table is initiated
    Then the query response does not return the market record information
    And a record not found message is returned

  @MVP
  @2018.PI03
  @2018.PI03.04
  Scenario: US1229506
    Given the med nec clause language listed in the table
    When a clause exists in a contract
    Then the clause code is made available

  @MVP
  @2018.PI03
  @2018.PI03.04
  Scenario: US1229512
    Given the med nec clause language listed in the table
    When a clause exists in a contract
    Then the clause code is made available

