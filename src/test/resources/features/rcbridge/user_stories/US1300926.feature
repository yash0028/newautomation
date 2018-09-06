# Last updated on 
@US1300926
@2018.PI03
Feature: US1300926 - [Continued] Import Data from Spreadsheet into Table over2MB

  @TC565228
  @Automated
  @Functional
  Scenario: TC565228 - [RL0]
    Given The product code service is up and running
    When A new spreadsheet is uploaded and stored in the database
    And The import is processed successfully
    Then The existing data is deleted
    And The content of spreadsheet is parsed and stored in a database table
    And The database is updated to indicate that the spreadsheet was processed successfully

  @TC565229
  @Automated
  @Functional
  Scenario: TC565229 - [RL1]
    Given The product code service is up and running
    When A new spreadsheet is uploaded and stored in the database
    And The import is fails
    Then The existing data is not deleted and not updated
    And The database is updated to indicate that the spreadsheet import failed

