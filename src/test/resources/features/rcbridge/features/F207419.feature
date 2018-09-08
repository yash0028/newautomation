# Last updated on 
@CMD2
@Priority_2
@F207419
Feature: F207419 - Integration Services - Part 2 Metadata legacy ETMA tables and code lists

  @CMD
  @US1259301
  Scenario: US1259301::0 - Zip to Market table microservice
    Given a user needs to query the table
    When the user provides ZipCd
    Then the query response provides the most recent record version attributes data

  @CMD
  @US1259301
  Scenario: US1259301::1 - Zip to Market table microservice
    Given a user queries the table
    When the query response result includes more than one record
    Then the response includes all records that matched

  @MVP
  @US1311701
  @2018.PI04
  Scenario: US1311701 - Med Nec clause table audit trail  - Facility
    Given the med nec clause code record has been updated in the table
    When the update has been recorded in CMD
    Then audit information is recorded and available

  @MVP
  @US1243370
  @2018.PI03
  Scenario: US1243370 - Contract Class Validation UHC table
    Given a contract sub type value exists
    When a contract sub type is selected
    Then the edit table validates the correct sub type was selected

  @MVP
  @US1229506
  @2018.PI04
  Scenario: US1229506 - Med Nec clause table - Facility
    Given the med nec clause language listed in the table
    When a clause exists in a contract
    Then the clause code is made available

  @MVP
  @US1229512
  @2018.PI04
  Scenario: US1229512 - Med Nec clause table update NDB service - Facility
    Given the med nec clause language listed in the table
    When a clause code value is created or updated
    Then the clause code information update is shared with NDB

  @MVP
  @US1311703
  @2018.PI04
  Scenario: US1311703 - Med Nec clause table CMD UI - Facility
    Given the med nec clause information needs to be updated
    When a user has authorization to access the data
    Then the table is made available via a web UI

  @MVP
  @US1232963
  @2018.PI03
  Scenario: US1232963::0 - Retroactive Reason Codes table
    Given a retroactive reason code value table exists
    When a request to the table to return all values is made
    Then the query response returns the list of active codes and code descriptions

  @MVP
  @US1232963
  @2018.PI03
  Scenario: US1232963::1 - Retroactive Reason Codes table
    # Add Codes as examples once provided
    Given a retroactive reason code value is included in the table
    When an inquiry/verification request for a specific code value is made
    Then the inquiry response/verification response returns the code and code description

  @MVP
  @US1232963
  @2018.PI03
  Scenario: US1232963::2 - Retroactive Reason Codes table
    Given a retroactive reason code value is not included in the table
    When an inquiry/verification request for the specific code value is made
    Then the inquiry response/verification response does not return the code and code description

  @MVP
  @US1311685
  @2018.PI04
  Scenario: US1311685 - Med Nec clause table update API to NDB  - Facility
    Given the med nec clause code record has been updated in the table
    When the update has been recorded in CMD
    Then the API service is initiated to notify NDB of the update

