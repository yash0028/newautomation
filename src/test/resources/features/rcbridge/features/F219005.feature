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

  @A_UI_Story
  @US1236428
  @2018.PI04
  Scenario: US1236428::0 - CMD Single Sign On - UHG Enterprise SSO (MSid and Password )
    Given a CMD record exists
    When the user navigates to the CMD from within Exari contract record
    Then the user is able to view the CMD for that contract record

  @A_UI_Story
  @US1236428
  @2018.PI04
  Scenario: US1236428::1 - CMD Single Sign On - UHG Enterprise SSO (MSid and Password )
    Given a CMD record does not exist
    When the user navigates to the CMD from within Exari contract record
    Then a message is returned to the user stating CMD record does not exist
    And user returned to the Exari contract record session from which they

  @A_UI_Story
  @US1236428
  @2018.PI04
  Scenario: US1236428::2 - CMD Single Sign On - UHG Enterprise SSO (MSid and Password )
    Given an CMD record exists
    When the user navigates to Exari from within the CMD contract record
    Then the user returns to Exari contract record

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

  @A_UI_Story
  @US1301634
  @2018.PI04
  Scenario: US1301634::0 - CMD Dashboard buttons (Populate data)
    Given I am on the CMD dashboard
    When There are no completed contract requests
    Then On the Completed button display 0 completed

  @A_UI_Story
  @US1301634
  @2018.PI04
  Scenario: US1301634::1 - CMD Dashboard buttons (Populate data)
    Given I am on the CMD dashboard
    When There are completed contracts
    Then On the Completed button display the number of completed requests returned from the search

  @A_UI_Story
  @US1301634
  @2018.PI04
  Scenario: US1301634::2 - CMD Dashboard buttons (Populate data)
    Given I am on the CMD dashboard
    When There are no In Progress transactions
    Then On the In Progress button display 0 In Progress

  @A_UI_Story
  @US1301634
  @2018.PI04
  Scenario: US1301634::3 - CMD Dashboard buttons (Populate data)
    Given I am on the CMD dashboard
    When There are In Progress contracts
    Then On the In Progress button display the number of In Progress requests returned from the search

  @A_UI_Story
  @US1301634
  @2018.PI04
  Scenario: US1301634::4 - CMD Dashboard buttons (Populate data)
    Given I am on the CMD dashboard
    When There are no Action Required Required transactions
    And There are no PCP reassignment transactions
    Then On the Action Required Button button display 0 In Progress

  @A_UI_Story
  @US1301634
  @2018.PI04
  Scenario: US1301634::5 - CMD Dashboard buttons (Populate data)
    Given I am on the CMD dashboard
    When There are Action Required contracts
    And There are PCP Reassignment transactions
    Then On the Action Required button display the number of Action Required requests returned from the search

  @A_UI_Story
  @US1301634
  @2018.PI04
  Scenario: US1301634::6 - CMD Dashboard buttons (Populate data)
    Given I am on the CMD dashboard
    When There are no Error transactions
    Then On the Failed button display 0 Errors

  @A_UI_Story
  @US1301634
  @2018.PI04
  Scenario: US1301634::7 - CMD Dashboard buttons (Populate data)
    Given I am on the CMD dashboard
    When There are Errors for contract requests
    Then On the Error button display the number of Error requests returned from the search

  @US1233109
  Scenario: US1233109::0 - Create CMD Contract Config transaction event schema
    Given an Exari contract is created
    When the contract is executed in Exari
    Then a CMD record is created and stored

  @US1233109
  Scenario: US1233109::1 - Create CMD Contract Config transaction event schema
    Given an CMD record exists
    When a CMD Status inquiry request is made
    Then a CMD Status inquiry response is generated

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

