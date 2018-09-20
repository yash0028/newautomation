# Last updated on 
@kumar,_Sachin
@US1256690
@2018.PI03
@2018.PI03.04
Feature: US1256690 - [Continued] Record Table data to Database

  @TC551934
  @Manual
  @Functional
  Scenario: TC551934 - Validate unsuccessful import of spreadsheet file
    Given The product code service is up and running
    When A new spreadsheet is uploaded and stored in the database
    And The import is fails
    Then The existing data is not deleted and not updated
    And The database is updated to indicate that the spreadsheet import failed

  @TC565879
  @Automated
  @Functional
  Scenario: TC565879 - [RL1]
    Given The product code service is up and running
    When A new spreadsheet is uploaded and stored in the database
    And The import is fails
    Then The existing data is not deleted and not updated
    And The database is updated to indicate that the spreadsheet import failed

  @TC551933
  @Manual
  @Functional
  Scenario: TC551933 - Validate unsuccessful import of spreadsheet data
    Given The product code service is up and running
    When A new spreadsheet is uploaded and stored in the database
    And The import is fails
    Then The existing data is not deleted and not updated
    And The database is updated to indicate that the spreadsheet import failed

