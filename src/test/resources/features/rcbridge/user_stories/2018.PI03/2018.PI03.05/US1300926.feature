# Last updated on 
@US1300926
@2018.PI03
@2018.PI03.05
@releaseUnknown
@iterationUnknown
Feature: US1300926 - [Continued] Import Data from Spreadsheet into Table over2MB

  @CLM_UAT
  @TC590075
  @Manual
  @Acceptance
  Scenario: TC590075 - Validate data in the database when the import fails
    Given The product code service is up and running
    When A new spreadsheet is uploaded and stored in the database
    And The import is fails
    Then The existing data is not deleted and not updated
    And The database is updated to indicate that the spreadsheet import failed

  @CLM_UAT
  @TC589746
  @Manual
  @Acceptance
  Scenario: TC589746 - Validate the data in the database when import is successful
    Given The product code service is up and running
    When A new spreadsheet is uploaded and stored in the database
    And The import is processed successfully
    Then The existing data is deleted
    And The content of spreadsheet is parsed and stored in a database table
    And The database is updated to indicate that the spreadsheet was processed successfully

  @TC616494
  @Manual
  @Functional
  Scenario: TC616494 - [RL0]
    Given The product code service is up and running
    When A new spreadsheet is uploaded and stored in the database
    And The import is processed successfully
    Then The existing data is deleted
    And The content of spreadsheet is parsed and stored in a database table
    And The database is updated to indicate that the spreadsheet was processed successfully

  @TC616495
  @Manual
  @Functional
  Scenario: TC616495 - [RL1]
    Given The product code service is up and running
    When A new spreadsheet is uploaded and stored in the database
    And The import is fails
    Then The existing data is not deleted and not updated
    And The database is updated to indicate that the spreadsheet import failed

