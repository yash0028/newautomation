# Last updated on 
@A_UI_Story
@US1517956
@2019.PI06
@2019.PI06.01
@releasePresent
@iterationPresent
Feature: US1517956 - CMD UTILITY -Affiliation Type code list CMD maintenance upload/download

  @TC693617
  @Manual
  @Functional
  @A_UI_Story
  Scenario: TC693617 - [RL0]
    Given the CMD affiliation type code value list/tables service is up and running
    When A new spreadsheet is uploaded and stored in the database
    And The import is processed successfully
    Then The existing data is deleted
    And The content of spreadsheet is parsed and stored in a database table
    And The database is updated to indicate that the spreadsheet was processed successfully

  @TC693622
  @Manual
  @Functional
  @A_UI_Story
  Scenario: TC693622 - [RL1]
    Given the CMD affiliation type code value list/tables service is up and running
    When A new spreadsheet is uploaded and stored in the database
    And The import fails
    Then The existing data is not deleted and not updated
    And The database is updated to indicate that the spreadsheet import failed

  @TC693626
  @Manual
  @Functional
  @A_UI_Story
  Scenario: TC693626 - [RL2]
    Given more than one CMD affiliation type table record exists in the database
    When access to a previous record version is needed
    Then the previous record versions are available

  @TC693627
  @Manual
  @Functional
  @A_UI_Story
  Scenario: TC693627 - [RL3]
    Given an update to the current version of the CMD affiliation type code value list is needed
    When an administrator downloads a copy of the table template
    Then the table template is made available to the administrator

  @TC693629
  @Manual
  @Functional
  @A_UI_Story
  Scenario: TC693629 - [RL4]
    Given the existence of a web UI
    When an authorized user access the URL
    Then the web UI for up/download is available

