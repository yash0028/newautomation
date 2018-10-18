# Last updated on
@kumar,_Sachin
@US1283910
@2018.PI03
@2018.PI03.03
@MVP
@10/1_Physician
@CMD
@CMD_Tables
@F214484
@releasePast
@iterationPast
Feature: US1283910 - [Unfinished] Record Table data to Database

  @TC605376
  @Manual
  @Functional
  @kumar,_Sachin
  @US1283910
  @2018.PI03
  @2018.PI03.03
  Scenario: TC605376 - [RL1]
    Given The product code service is up and running
    When A new spreadsheet is uploaded and stored in the database
    And The import is fails
    Then The existing data is not deleted and not updated
    And The database is updated to indicate that the spreadsheet import failed

