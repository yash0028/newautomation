# Last updated on 
@MVP
@10/1_Physician
@Priority_1
@CMD
@F205820
Feature: F205820 - Contract Meta Data (CMD) App4 - Part 1

  @US1236428
  @2018.PI03
  Scenario: US1236428::0 - CMD Single Sign On - UHG Enterprise SSO (MSid and Password )
    Given a CMD record exists
    When the user navigates to the CMD from within Exari contract record
    Then the user is able to view the CMD for that contract record

  @US1236428
  @2018.PI03
  Scenario: US1236428::1 - CMD Single Sign On - UHG Enterprise SSO (MSid and Password )
    Given a CMD record does not exist
    When the user navigates to the CMD from within Exari contract record
    Then a message is returned to the user stating CMD record does not exist
    And user returned to the Exari contract record session from which they

  @US1236428
  @2018.PI03
  Scenario: US1236428::2 - CMD Single Sign On - UHG Enterprise SSO (MSid and Password )
    Given an CMD record exists
    When the user navigates to Exari from within the CMD contract record
    Then the user returns to Exari contract record

  @US1233109
  @2018.PI03
  Scenario: US1233109::0 - Create CMD Contract Config transaction event schema
    Given an Exari contract is created
    When the contract is executed in Exari
    Then a CMD record is created and stored

  @US1233109
  @2018.PI03
  Scenario: US1233109::1 - Create CMD Contract Config transaction event schema
    Given an CMD record exists
    When a CMD Status inquiry request is made
    Then a CMD Status inquiry response is generated

