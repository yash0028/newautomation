# Last updated on 
@US1283892
@2018.PI03
@2018.PI03.03
@MVP
@10/1_Physician
@Crosswalk
@Priority_1
@CMD
@releasePast
@iterationPast
Feature: US1283892 - [Unfinished] Import Data from Spreadsheet into Table

  @TC605408
  @Manual
  @Functional
  Scenario: TC605408 - [RL0]
    Given The product code service is up and running
    When A new spreadsheet is uploaded and stored in the database
    And The import is processed successfully
    Then The existing data is deleted
    And The content of spreadsheet is parsed and stored in a database table
    And The database is updated to indicate that the spreadsheet was processed successfully

  @TC605409
  @Manual
  @Functional
  Scenario: TC605409 - [RL1]
    Given The product code service is up and running
    When A new spreadsheet is uploaded and stored in the database
    And The import is fails
    Then The existing data is not deleted and not updated
    And The database is updated to indicate that the spreadsheet import failed

