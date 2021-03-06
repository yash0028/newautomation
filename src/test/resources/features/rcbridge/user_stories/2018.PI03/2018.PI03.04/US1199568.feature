# Last updated on 
@US1199568
@2018.PI03
@2018.PI03.04
@releasePast
@iterationPast
Feature: US1199568 - [Continued] Import Data from Spreadsheet into Table

  @TC546797
  @Manual
  @Functional
  Scenario: TC546797 - Validate successful import of spreadsheet data
    Given The product code service is up and running
    When A new spreadsheet is uploaded and stored in the database
    And The import is processed successfully
    Then The existing data is deleted
    And The content of spreadsheet is parsed and stored in a database table
    And The database is updated to indicate that the spreadsheet was processed successfully

  @TC546801
  @Manual
  @Functional
  Scenario: TC546801 - Validate unsuccessful import of spreadsheet data
    Given The product code service is up and running
    When A new spreadsheet is uploaded and stored in the database
    And The import is fails
    Then The existing data is not deleted and not updated
    And The database is updated to indicate that the spreadsheet import failed

  @TC546803
  @Manual
  @Functional
  Scenario: TC546803 - Validate unsuccessful import of spreadsheet file
    Given The product code service is up and running
    When A new spreadsheet is uploaded and stored in the database
    And The import is fails
    Then The existing data is not deleted and not updated
    And The database is updated to indicate that the spreadsheet import failed

  @TC615289
  @Manual
  @Functional
  Scenario: TC615289 - [RL0]
    Given The product code service is up and running
    When A new spreadsheet is uploaded and stored in the database
    And The import is processed successfully
    Then The existing data is deleted
    And The content of spreadsheet is parsed and stored in a database table
    And The database is updated to indicate that the spreadsheet was processed successfully

  @TC615290
  @Manual
  @Functional
  Scenario: TC615290 - [RL1]
    Given The product code service is up and running
    When A new spreadsheet is uploaded and stored in the database
    And The import is fails
    Then The existing data is not deleted and not updated
    And The database is updated to indicate that the spreadsheet import failed

