# Last updated on 2018-05-08T15:59:06.232Z
@MVP
Feature: F178659 - Exari>NDB  Contract Lock-down - CF Team

  Scenario: US1065276
    Given the contract was sent to NDB via the Exari payload process
    When a user attempts manual update or mass update from any other program asside Exari
    Then the contract will edit that the contract is NOT available for update

