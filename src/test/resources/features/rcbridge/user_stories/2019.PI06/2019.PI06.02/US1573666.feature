# Last updated on 
@A_UI_Story
@US1573666
@2019.PI06
@2019.PI06.02
@releasePresent
@iterationPast
Feature: US1573666 - CMD UTILITY - Our Legal Entities list CMD maintenance upload/download

  @TC720662
  @Manual
  @Functional
  @A_UI_Story
  Scenario: TC720662 - [RL0]
    Given the CMD Our Legal Entities value list/tables service is up and running
    When A new spreadsheet is uploaded and stored in the database
    And The import is processed successfully
    Then The existing data is deleted
    And The content of spreadsheet is parsed and stored in a database table
    And The database is updated to indicate that the spreadsheet was processed successfully

  @TC720664
  @Manual
  @Functional
  @A_UI_Story
  Scenario: TC720664 - [RL1]
    Given the CMD Our Legal Entities value list/tables service is up and running
    When A new spreadsheet is uploaded and stored in the database
    And The import fails
    Then The existing data is not deleted and not updated
    And The database is updated to indicate that the spreadsheet import failed

  @TC720673
  @Manual
  @Functional
  @A_UI_Story
  Scenario: TC720673 - [RL2]
    Given more than one CMD Our Legal Entities record exists in the database
    When access to a previous record version is needed
    Then the previous record versions are available

  @TC720680
  @Manual
  @Functional
  @A_UI_Story
  Scenario: TC720680 - [RL3]
    Given an update to the current version of the CMD Our Legal Entities value list is needed
    When an administrator downloads a copy of the table template
    Then the table template is made available to the administrator

  @TC720685
  @Manual
  @Functional
  @A_UI_Story
  Scenario: TC720685 - [RL4]
    Given the existence of a web UI
    When an authorized user access the URL
    Then the web UI for up/download is available

