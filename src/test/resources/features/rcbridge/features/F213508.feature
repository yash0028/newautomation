# Last updated on 2018-08-07T20:03:53.677Z
@MVP
@10/1_Physician
@CMD
Feature: F213508 - Integration Services - Reference tables and code value lists

  @kumar,_Sachin
  @Alex_M
  @2018.PI03
  @2018.PI03.03
  Scenario: US1256692
    Given the application screen is ready
    When a table file is uploaded
    Then the previous file record and audit log info is stored in the database

  @CMD
  Scenario: US1259301::0
    Given a user needs to query the table
    When the user provides ZipCd
    Then the query response provides the most recent record version attributes data

  @CMD
  Scenario: US1259301::1
    Given a user queries the table
    When the query response result includes more than one record
    Then the response includes all records that matched

  @kumar,_Sachin
  @2018.PI03
  @2018.PI03.03
  Scenario: US1256687
    Given attributes and permissible code values have been gathered
    When the table administrator needs to store the information
    Then a table is made available for the administrator to create and maintian the information

  @2018.PI03
  Scenario: US1256695
    Given the existence of a web UI
    When an authorized user access the URL
    Then the web UI for up/download is available

  @2018.PI03
  Scenario: US1256696
    Given A UI will be created for the Provider Taxonomy Grid template
    When accessed by a user
    Then the UI will be made available to the user.

  @2018.PI03
  Scenario: US1256686
    Given data can not be sourced directly from data authority
    When data attributes and permissible code values have been analyzed
    And attribute definitions, data types and permissible code values identified
    Then a table template to store a copy of the information is made available

  @kumar,_Sachin
  @2018.PI03
  @2018.PI03.03
  Scenario: US1256690::0
    Given The table service is up and running
    When A new template is uploaded and stored in the database
    And The import is processed successfullyThen The existing data is deleted
    And The content of spreadsheet is parsed and stored in a database table
    And The database is updated to indicate that the spreadsheet was processed successfully

  @kumar,_Sachin
  @2018.PI03
  @2018.PI03.03
  Scenario: US1256690::1
    Given The product code service is up and running
    When A new spreadsheet is uploaded and stored in the database
    And The import is fails
    Then The existing data is not deleted and not updated
    And The database is updated to indicate that the spreadsheet import failed

  @Mark
  @2018.PI03
  @2018.PI03.03
  Scenario: US1259178::0
    Given a user needs to query the table
    When the user provides NDB SpecCd or NDB OrgTypeCd and Prov Rec Type values
    Then the query response provides the most recent record version attributes data

  @Mark
  @2018.PI03
  @2018.PI03.03
  Scenario: US1259178::1
    Given a user needs to query the table
    When the user provides a value of P for Rec Type
    Then the user must provide NDB Spec Cd
    And Degree Code is optional

  @Mark
  @2018.PI03
  @2018.PI03.03
  Scenario: US1259178::2
    Given a user needs to query the table
    When the user provides a value of O for Rec Type
    Then the user must provide NDB Org Type Cd
    And SpecCd is optional

  @Mark
  @2018.PI03
  @2018.PI03.03
  Scenario: US1259178::3
    Given a user queries the table
    When the query response result includes more than one record
    Then the response includes all records that matched

  @kumar,_Sachin
  @2018.PI03
  @2018.PI03.03
  Scenario: US1256689::0
    Given a template has records populated with data
    When the template is uploaded
    Then the file and data is validated
    And a message is returned to the user that the process was successful

  @kumar,_Sachin
  @2018.PI03
  @2018.PI03.03
  Scenario: US1256689::1
    Given a template is populated with invalid data
    When the template is uploaded
    Then the file and data is validated
    And a message(s) is returned to the user of all errors and notification that the process failed

