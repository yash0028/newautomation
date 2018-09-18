# Last updated on 
@MVP
@10/1_Physician
@Priority_1
@CMD
@F205820
Feature: F205820 - Contract Meta Data (CMD) App4 - Part 1

  @A_UI_Story
  @US1301716
  @2018.PI03
  Scenario: US1301716 - CMD Dashboard Navigation Bar
    Given I have entered the CMD dashboard URL
    And I am recognized as a contract administrator with access to CMD
    When The dashboard page loads
    Then I can see the following as a heading on the CMD page "Contract Metadata, Current Transactions, Reference Data, User Input Queue, PCP Reassign, FAQ, Administrative, Help"

  @A_UI_Story
  @US1301613
  @2018.PI03
  Scenario: US1301613 - CMD Dashboard buttons
    Given I have entered the CMD dashboard URL
    And I am recognized as a contract administrator with access to CMD
    When The dashboard page loads
    Then I can see the following buttons "Completed, In-Progress, Action Required, Errors"

  @A_UI_Story
  @US1236428
  @2018.PI03
  Scenario: US1236428::0 - CMD Single Sign On - UHG Enterprise SSO (MSid and Password )
    Given a CMD record exists
    When the user navigates to the CMD from within Exari contract record
    Then the user is able to view the CMD for that contract record

  @A_UI_Story
  @US1236428
  @2018.PI03
  Scenario: US1236428::1 - CMD Single Sign On - UHG Enterprise SSO (MSid and Password )
    Given a CMD record does not exist
    When the user navigates to the CMD from within Exari contract record
    Then a message is returned to the user stating CMD record does not exist
    And user returned to the Exari contract record session from which they

  @A_UI_Story
  @US1236428
  @2018.PI03
  Scenario: US1236428::2 - CMD Single Sign On - UHG Enterprise SSO (MSid and Password )
    Given an CMD record exists
    When the user navigates to Exari from within the CMD contract record
    Then the user returns to Exari contract record

  @A_UI_Story
  @US1301634
  @2018.PI03
  Scenario: US1301634::0 - CMD Dashboard buttons (Populate data)
    Given I am on the CMD dashboard
    When There are no completed contract requests
    Then On the Completed button display 0 completed

  @A_UI_Story
  @US1301634
  @2018.PI03
  Scenario: US1301634::1 - CMD Dashboard buttons (Populate data)
    Given I am on the CMD dashboard
    When There are completed contracts
    Then On the Completed button display the number of completed requests returned from the search

  @A_UI_Story
  @US1301634
  @2018.PI03
  Scenario: US1301634::2 - CMD Dashboard buttons (Populate data)
    Given I am on the CMD dashboard
    When There are no In Progress transactions
    Then On the In Progress button display 0 In Progress

  @A_UI_Story
  @US1301634
  @2018.PI03
  Scenario: US1301634::3 - CMD Dashboard buttons (Populate data)
    Given I am on the CMD dashboard
    When There are In Progress contracts
    Then On the In Progress button display the number of In Progress requests returned from the search

  @A_UI_Story
  @US1301634
  @2018.PI03
  Scenario: US1301634::4 - CMD Dashboard buttons (Populate data)
    Given I am on the CMD dashboard
    When There are no Action Required Required transactions
    And There are no PCP reassignment transactions
    Then On the Action Required Button button display 0 In Progress

  @A_UI_Story
  @US1301634
  @2018.PI03
  Scenario: US1301634::5 - CMD Dashboard buttons (Populate data)
    Given I am on the CMD dashboard
    When There are Action Required contracts
    And There are PCP Reassignment transactions
    Then On the Action Required button display the number of Action Required requests returned from the search

  @A_UI_Story
  @US1301634
  @2018.PI03
  Scenario: US1301634::6 - CMD Dashboard buttons (Populate data)
    Given I am on the CMD dashboard
    When There are no Error transactions
    Then On the Failed button display 0 Errors

  @A_UI_Story
  @US1301634
  @2018.PI03
  Scenario: US1301634::7 - CMD Dashboard buttons (Populate data)
    Given I am on the CMD dashboard
    When There are Errors for contract requests
    Then On the Error button display the number of Error requests returned from the search

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

