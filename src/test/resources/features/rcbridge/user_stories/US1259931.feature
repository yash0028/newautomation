# Last updated on 
@MVP
@10/1_Physician
@CMD
@US1259931
@2018.PI03
Feature: US1259931 - [Continued] Maintain data using table template

  @TC564837
  @Automated
  @Functional
  Scenario: TC564837 - [RL0]
    Given The table data service is up and running
    When new data is updated in the database
    And The update is processed successfully
    Then The existing previous data is deleted
    And The database is updated to indicate that the spreadsheet was processed successfully

  @TC548917
  @Automated
  @Functional
  Scenario: TC548917 - Verify spreadsheet import failed
    Given The table data service is up and running
    When new data is updated in the database
    And The update process fails
    Then The existing data is not archived and not updated
    And The database is updated to indicate that the spreadsheet import failed

  @TC564839
  @Automated
  @Functional
  Scenario: TC564839 - [RL1]
    Given The table data service is up and running
    When new data is updated in the database
    And The update process fails
    Then The existing data is not archived and not updated
    And The database is updated to indicate that the spreadsheet import failed

  @TC548916
  @Automated
  @Functional
  Scenario: TC548916 - Verify spreadsheet was processed successfully
    Given The table data service is up and running
    When A new data is updated in the database
    And The update is processed successfully
    Then The existing previous data is deleted
    And The database is updated to indicate that the spreadsheet was processed successfully

