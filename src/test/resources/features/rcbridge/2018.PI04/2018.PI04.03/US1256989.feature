# Last updated on
@A_UI_Story
@US1256989
@2018.PI04
@2018.PI04.03
@MVP
@10/1_Physician
@Priority_1
@CMD
@Amrutha
@releasePresent
@iterationPast
Feature: US1256989 - Upload CLM Rule Table

  @TC603988
  @Manual
  @Functional
  @A_UI_Story
  Scenario: TC603988 - [RL1]
    Given the CLM Rules Tables service is up and running
    When A new spreadsheet is uploaded and stored in the database
    And The import is fails
    Then The existing data is not deleted and not updated
    And The database is updated to indicate that the spreadsheet import failed

  @TC603990
  @Manual
  @Functional
  @A_UI_Story
  Scenario: TC603990 - [RL3]
    Given an update to the current version of the CLM Rules Table is needed
    When an administrator downloads a copy of the rules table template
    Then the rules table template is made available to the administrator

  @TC603991
  @Manual
  @Functional
  @A_UI_Story
  Scenario: TC603991 - [RL4]
    Given the existence of a web UI
    When an authorized user access the URL
    Then the web UI for up/download is available

  @TC615405
  @Manual
  @Functional
  @A_UI_Story
  Scenario: TC615405 - [RL0]
    Given the CLM Rule Tables service is up and running
    When A new spreadsheet is uploaded and stored in the database
    And The import is processed successfully
    Then The existing data is deleted
    And The content of spreadsheet is parsed and stored in a database table
    And The database is updated to indicate that the spreadsheet was processed successfully

  @TC603989
  @Manual
  @Functional
  @A_UI_Story
  Scenario: TC603989 - [RL2]
    Given more than one CLM Rules Table record exists in the database
    When access to a previous record version is needed
    Then the previous record versions are available

