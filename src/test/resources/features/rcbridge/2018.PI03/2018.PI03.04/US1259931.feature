# Last updated on
@MVP
@10/1_Physician
@CMD
@US1259931
@2018.PI03
@2018.PI03.04
@MVP
@10/1_Physician
@CMD
@CMD_Tables
@F214484
@releasePast
@iterationPast
Feature: US1259931 - [Continued] Maintain data using table template

  @TC548917
  @Automated
  @Functional
  @MVP
  @10/1_Physician
  @CMD
  @US1259931
  @2018.PI03
  @2018.PI03.04
  Scenario: TC548917 - [RL1] Verify spreadsheet import failed
    Given The table data service is up and running
    When new data is updated in the database
    And The update process fails
    Then The existing data is not archived and not updated
    And The database is updated to indicate that the spreadsheet import failed

  @TC548916
  @Automated
  @Functional
  @MVP
  @10/1_Physician
  @CMD
  @US1259931
  @2018.PI03
  @2018.PI03.04
  Scenario: TC548916 - [RL0] Verify spreadsheet was processed successfully
    Given The table data service is up and running
    When new data is updated in the database
    And The update is processed successfully
    Then The existing previous data is deleted
    And The database is updated to indicate that the spreadsheet was processed successfully

