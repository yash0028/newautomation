# Last updated on 
@A_UI_Story
@US1518160
@2018.PI05
@2018.PI05.04
@MVP
@CMD_UI
@releasePresent
@iterationPresent
Feature: US1518160 - CMD UTILITY - Provider Category Type CMD maintenance upload/download

  @TC693619
  @Manual
  @Functional
  @A_UI_Story
  Scenario: TC693619 - [RL0]
    Given the CMD Provider Category type tables service is up and running
    When A new spreadsheet is uploaded and stored in the database
    And The import is processed successfully
    Then The existing data is deleted
    And The content of spreadsheet is parsed and stored in a database table
    And The database is updated to indicate that the spreadsheet was processed successfully

  @TC693623
  @Manual
  @Functional
  @A_UI_Story
  Scenario: TC693623 - [RL1]
    Given the CMD Provider Category type code value list/tables service is up and running
    When A new spreadsheet is uploaded and stored in the database
    And The import fails
    Then The existing data is not deleted and not updated
    And The database is updated to indicate that the spreadsheet import failed

  @TC693625
  @Manual
  @Functional
  @A_UI_Story
  Scenario: TC693625 - [RL2]
    Given more than one CMD Provider Category type table record exists in the database
    When access to a previous record version is needed
    Then the previous record versions are available

  @TC693628
  @Manual
  @Functional
  @A_UI_Story
  Scenario: TC693628 - [RL3]
    Given an update to the current version of the CMD Provider Category type table is needed
    When an administrator downloads a copy of the table template
    Then the table template is made available to the administrator

  @TC693630
  @Manual
  @Functional
  @A_UI_Story
  Scenario: TC693630 - [RL4]
    Given the existence of a web UI
    When an authorized user access the URL
    Then the web UI for up/download is available

