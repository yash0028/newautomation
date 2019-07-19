# Last updated on 
@US1925436
@2019.PI08
@2019.PI08.02
@releasePresent
@iterationPresent
Feature: US1925436 - (Copy of) CMD Reference Table - PCP Designation Upload/Download

  @TC902695
  @Manual
  @Functional
  Scenario: TC902695 - [RL0]
    Given the CMD PCP Designation table service is up and running
    When A new spreadsheet is uploaded and stored in the database
    And The import is processed successfully
    Then The existing data is deleted
    And The content of spreadsheet is parsed and stored in a database table
    And The database is updated to indicate that the spreadsheet was processed successfully

  @TC902705
  @Manual
  @Functional
  Scenario: TC902705 - [RL1]
    Given the CMD PCP Designation table service is up and running
    When A new spreadsheet is uploaded and stored in the database
    And The import fails
    Then The existing data is not deleted and not updated
    And The database is updated to indicate that the spreadsheet import failed
    And all messages of the reason for the failure are displayed in the UI

  @TC902711
  @Manual
  @Functional
  Scenario: TC902711 - [RL2]
    Given more than one CMD PCP Designation table record exists in the database
    When access to a previous record version is needed
    Then the previous record versions are available

  @TC902715
  @Manual
  @Functional
  Scenario: TC902715 - [RL3]
    Given an update to the current version of the CMD PCP Designation is needed
    When an administrator downloads a copy of the table template
    Then the table template is made available to the administrator

  @TC902716
  @Manual
  @Functional
  Scenario: TC902716 - [RL4]
    Given the existence of a web UI
    When an authorized user access the URL
    Then the web UI for up/download is available

