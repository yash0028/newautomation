# Last updated on 
@MVP
@10/1_Physician
@Priority_1
@CMD
@F219005
Feature: F219005 - Contract Meta Data (CMD) App4 - Part 2

  @US1289382
  @2018.PI04
  Scenario: US1289382::0 - Contract Config Services - Contract Config search service
    Given a user needs to search the CMD summary database
    When the user has authorization to access the database records
    Then a service is made available to search the database records

  @US1289382
  @2018.PI04
  Scenario: US1289382::1 - Contract Config Services - Contract Config search service
    Given a user needs to search the CMD summary database
    When the user does NOT have authorization to access the database records
    Then a service is NOT available to search the database records
    And access is denied

  @US1289476
  @2018.PI04
  Scenario: US1289476::0 - View Contract Config Detail web page
    Given an contract configuration detail record exists
    When a contract configuration request is initiated
    Then a web page displaying the record details is made available

  @US1289476
  @2018.PI04
  Scenario: US1289476::1 - View Contract Config Detail web page
    Given an contract configuration detail record does not exist
    When a contract configuration request is initiatedi
    Then an error message is returned to the user
    And a web page is not made available

  @US1233645
  @2018.PI04
  Scenario: US1233645::0 - Create Contract Config Summary web page template
    Given a contract configuration overview record exists
    When a request is initiated to access the record
    Then the information is displayed using a predefined template layout

  @US1240232
  @2018.PI04
  Scenario: US1240232::0 - Modify Contract Config record (UI)
    Given an Exari contract is created
    When the contract 'Final Capture' event occurs in Exari
    Then a CMD record is created

  @US1240232
  @2018.PI04
  Scenario: US1240232::1 - Modify Contract Config record (UI)
    Given an CMD record exists
    When a CMD record inquiry request is made
    Then a CMD record is accessible

  @US1289549
  @2018.PI04
  Scenario: US1289549::0 - Contract Config Services - Update Contract Config record
    Given a contract master override or exception has been deemed appropriate
    When the contract configuration detail record is accessed
    Then a service is available that records the override record information to the contract config record

  @US1289316
  @2018.PI04
  Scenario: US1289316::0 - View Contract Config Summary web page
    Given an contract configuration summary record exists
    When a contract configuration request is initiated from within Exari
    Then a web page displaying the record is made available

  @US1289316
  @2018.PI04
  Scenario: US1289316::1 - View Contract Config Summary web page
    Given an contract configuration summary record does not exist
    When a contract configuration request is initiated from within Exari
    Then an error message is returned to the user
    And a web page is not made available

  @US1289517
  @2018.PI04
  Scenario: US1289517::0 - Contract Config Services - Contract Master overrides service
    Given a contract master override or exception was recorded to the database
    When override record query is needed to locate details in the database
    Then a service is available to search and respond with override record details

  @US1289517
  @2018.PI04
  Scenario: US1289517::1 - Contract Config Services - Contract Master overrides service
    Given a contract master override or exception was NOT recorded to the database
    When override record query is needed to locate record details in the database
    Then a service is available to search and respond with no details
    And a response message of no record details found

  @US1289455
  @2018.PI04
  Scenario: US1289455::0 - Create Contract Config Detail web page template
    Given a contract configuration summary record exist
    When a request is initiated to access the detail record
    Then the detail record properties and values are displayed using a predefined template layout

