# Last updated on 
@US1283892
@2018.PI03
@2018.PI03.03
@MVP
@10/1_Physician
@Crosswalk
@Priority_1
@CMD
@F201371
Feature: US1283892 - [Unfinished] Import Data from Spreadsheet into Table

  @TC564668
  @Automated
  @Functional
  @US1283892
  @2018.PI03
  @2018.PI03.03
  Scenario: TC564668 - [RL0]
    Given The product code service is up and running
    When A new spreadsheet is uploaded and stored in the database
    And The import is processed successfully
    Then The existing data is deleted
    And The content of spreadsheet is parsed and stored in a database table
    And The database is updated to indicate that the spreadsheet was processed successfully

  @TC564669
  @Automated
  @Functional
  @US1283892
  @2018.PI03
  @2018.PI03.03
  Scenario: TC564669 - [RL1]
    Given The product code service is up and running
    When A new spreadsheet is uploaded and stored in the database
    And The import is fails
    Then The existing data is not deleted and not updated
    And The database is updated to indicate that the spreadsheet import failed

