# Last updated on 2018-08-07T16:08:04.261Z
@MVP
@10/1_Physician
Feature: F207419 - Integration Services - ETMA legacy data tables and code lists

  @MVP
  @10/1_Physician
  @CMD
  @2018.PI03
  @2018.PI03.03
  Scenario: US1259931::0
    Given The table data service is up and running
    When A new data is updated in the database
    And The update is processed successfully
    Then The existing data is archived
    And The content is parsed and stored in a database table
    And The database is updated to indicate that the spreadsheet was processed successfully

  @MVP
  @10/1_Physician
  @CMD
  @2018.PI03
  @2018.PI03.03
  Scenario: US1259931::1
    Given The table data service is up and running
    When new data is updated in the database
    And The update process fails
    Then The existing data is not archived and not updated
    And The database is updated to indicate that the spreadsheet import failed

  @MVP
  @2018.PI03
  @2018.PI03.03
  Scenario: US1229421::0
    Given the market number is listed in the Market UHC table
    When a query to the table is initiated
    Then the query response includes the market record information

  @MVP
  @2018.PI03
  @2018.PI03.03
  Scenario: US1229421::1
    Given the market number is not listed in the Market UHC table
    When a query to the table is initiated
    Then the query response does not return the market record information
    And a record not found message is returned

  @MVP
  @2018.PI03
  @2018.PI03.03
  Scenario: US1257320::0
    Given the market number is listed in the Market UHC table
    When a query to the table is initiated
    Then the query response includes the market record information

  @MVP
  @2018.PI03
  @2018.PI03.03
  Scenario: US1257320::1
    Given the market number is not listed in the Market UHC table
    When a query to the table is initiated
    Then the query response does not return the market record information
    And a record not found message is returned

  @MVP
  @2018.PI03
  @2018.PI03.04
  Scenario: US1229506
    Given the med nec clause language listed in the table
    When a clause exists in a contract
    Then the clause code is made available

  @MVP
  @2018.PI03
  @2018.PI03.04
  Scenario: US1229512
    Given the med nec clause language listed in the table
    When a clause code value is created or updated
    Then the clause code information update is shared with NDB

  @MVP
  @2018.PI03
  @2018.PI03.03
  Scenario: US1232963::0
    Given a retroactive reason code value table exists
    When a request to the table to return all values is made
    Then the query response returns the list of active codes and code descriptions

  @MVP
  @2018.PI03
  @2018.PI03.03
  Scenario: US1232963::1
    Given a retroactive reason code value is included in the table
    When an inquiry/verification request for a specific code value is made
    Then the inquiry response/verification response returns the code and code description

  @MVP
  @2018.PI03
  @2018.PI03.03
  Scenario: US1232963::2
    Given a retroactive reason code value is not included in the table
    When an inquiry/verification request for the specific code value is made
    Then the inquiry response/verification response does not return the code and code description

