# Last updated on 
@kumar,_Sachin
@US1283910
@2018.PI03
@2018.PI03.03
Feature: US1283910 - [Unfinished] Record Table data to Database

  @TC565614
  @Automated
  @Functional
  Scenario: TC565614 - [RL1]
    Given The product code service is up and running
    When A new spreadsheet is uploaded and stored in the database
    And The import is fails
    Then The existing data is not deleted and not updated
    And The database is updated to indicate that the spreadsheet import failed

