# Last updated on 
@US1300926
@2018.PI03
@2018.PI03.05
@MVP
@10/1_Physician
@Crosswalk
@Priority_1
@CMD
@F201371
@releasePast
@iterationPast
Feature: US1300926 - [Continued] Import Data from Spreadsheet into Table over2MB

  @CLM_UAT
  @TC590075
  @Manual
  @Acceptance
  @US1300926
  @2018.PI03
  @2018.PI03.05
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
  @US1300926
  @2018.PI03
  @2018.PI03.05
  Scenario: TC589746 - Validate the data in the database when import is successful
    Given The product code service is up and running
    When A new spreadsheet is uploaded and stored in the database
    And The import is processed successfully
    Then The existing data is deleted
    And The content of spreadsheet is parsed and stored in a database table
    And The database is updated to indicate that the spreadsheet was processed successfully

  @TC565228
  @Automated
  @Functional
  @US1300926
  @2018.PI03
  @2018.PI03.05
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
  @US1300926
  @2018.PI03
  @2018.PI03.05
  Scenario: TC565229 - [RL1]
    Given The product code service is up and running
    When A new spreadsheet is uploaded and stored in the database
    And The import is fails
    Then The existing data is not deleted and not updated
    And The database is updated to indicate that the spreadsheet import failed

