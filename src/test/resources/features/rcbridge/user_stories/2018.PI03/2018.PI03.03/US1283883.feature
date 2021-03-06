# Last updated on 
@MVP
@10/1_Physician
@CMD
@US1283883
@2018.PI03
@2018.PI03.03
@releasePast
@iterationPast
Feature: US1283883 - [Unfinished] Maintain data using table template

  @TC605350
  @Manual
  @Functional
  @MVP
  @10/1_Physician
  @CMD
  Scenario: TC605350 - [RL0]
    Given The table data service is up and running
    When new data is updated in the database
    And The update is processed successfully
    Then The existing previous data is deleted
    And The database is updated to indicate that the spreadsheet was processed successfully

  @TC605351
  @Manual
  @Functional
  @MVP
  @10/1_Physician
  @CMD
  Scenario: TC605351 - [RL1]
    Given The table data service is up and running
    When new data is updated in the database
    And The update process fails
    Then The existing data is not archived and not updated
    And The database is updated to indicate that the spreadsheet import failed

