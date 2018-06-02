# Last updated on 2018-06-01T13:31:50.155Z
@MVP
@Plus
Feature: F178659 - Exari>NDB  Contract Lock-down Physician and Facility - CF Team

  @2018.PI02
  @2018.PI02.03
  Scenario: US1065276
    Given the contract was sent to NDB via the Exari payload process
    When a user attempts manual update or mass update from any other program asside Exari
    Then the contract will edit that the contract is NOT available for update

  @2018.PI02
  @2018.PI02.01
  Scenario: US1128069
    Given the contract was sent to NDB via the Exari payload process
    When a user attempts manual update or mass update from any other program asside Exari
    Then the contract will edit that the contract is NOT available for update

  @2018.PI02
  @2018.PI02.02
  Scenario: US1148671
    Given the contract was sent to NDB via the Exari payload process
    When a user attempts manual update or mass update from any other program asside Exari
    Then the contract will edit that the contract is NOT available for update

