# Last updated on 
@MVP
@10/1_Physician
@CMD
@F214484
Feature: F214484 - Integration Services - Part 1 Metadata tables critical day 1

  @MVP
  @US1229421
  @2018.PI03
  Scenario: US1229421::0 - Markets table
    Given the market number is listed in the Market UHC table
    When a query to the table is initiated
    Then the query response includes the market record information

  @MVP
  @US1229421
  @2018.PI03
  Scenario: US1229421::1 - Markets table
    Given the market number is not listed in the Market UHC table
    When a query to the table is initiated
    Then the query response does not return the market record information
    And a record not found message is returned

  @MVP
  @US1257320
  @2018.PI03
  Scenario: US1257320::0 - Markets table microservice
    Given the market number is listed in the Market UHC table
    When a query to the table is initiated
    Then the query response includes the market record information

  @MVP
  @US1257320
  @2018.PI03
  Scenario: US1257320::1 - Markets table microservice
    Given the market number is not listed in the Market UHC table
    When a query to the table is initiated
    Then the query response does not return the market record information
    And a record not found message is returned

  @US1256695
  @2018.PI03
  Scenario: US1256695 - User Interface for up and download
    Given the existence of a web UI
    When an authorized user access the URL
    Then the web UI for up/download is available

  @US1256696
  @2018.PI03
  Scenario: US1256696 - Styling Template for Provider Taxonomy Grid UI
    Given A UI will be created for the Provider Taxonomy Grid template
    When accessed by a user
    Then the UI will be made available to the user.

  @US1267799
  @2018.PI03
  Scenario: US1267799::0 - UHC Market table Create Microservice to exchange information with users
    Given information is stored in the tableWhen a user needs information from the tableThen a service is available to exchange informationGiven a user needs to query the table
    When the user provides NDB Market Number values
    Then the query response provides the most recent record version attributes data

  @US1267799
  @2018.PI03
  Scenario: US1267799::1 - UHC Market table Create Microservice to exchange information with users
    Given a user needs to query the table
    When the user provides a value of ST code
    Then the user must provide Market Network Owner cd value UHN EVC CNS

  @kumar,_Sachin
  @Alex_M
  @US1256692
  @2018.PI03
  Scenario: US1256692 - Store history and audit metadata
    Given the application screen is ready
    When a table file is uploaded
    Then the previous file record and audit log info is stored in the database

  @kumar,_Sachin
  @US1256687
  @2018.PI03
  Scenario: US1256687 - Populate initial Provider Taxonomy Grid table
    Given attributes and permissible code values have been gathered
    When the table administrator needs to store the information
    Then a table is made available for the administrator to create and maintian the information

  @MVP
  @10/1_Physician
  @CMD
  @US1259931
  @2018.PI03
  Scenario: US1259931::0 - Maintain data using table template
    Given The table data service is up and running
    When new data is updated in the database
    And The update is processed successfully
    Then The existing previous data is deleted
    And The database is updated to indicate that the spreadsheet was processed successfully

  @MVP
  @10/1_Physician
  @CMD
  @US1259931
  @2018.PI03
  Scenario: US1259931::1 - Maintain data using table template
    Given The table data service is up and running
    When new data is updated in the database
    And The update process fails
    Then The existing data is not archived and not updated
    And The database is updated to indicate that the spreadsheet import failed

  @US1262733
  @2018.PI03
  Scenario: US1262733 - Product Group process code table
    Given a business reason exists to group products and services together
    When a service exists to assign identifiers to the different product groupings
    Then the administrator has a means to record the details of those groupings

  @US1256686
  @2018.PI03
  Scenario: US1256686 - Create Provider Taxonomy Grid Table Template
    Given data can not be sourced directly from data authority
    When data attributes and permissible code values have been analyzed
    And attribute definitions, data types and permissible code values identified
    Then a table template to store a copy of the information is made available

  @kumar,_Sachin
  @US1256690
  @2018.PI03
  Scenario: US1256690::1 - Record Table data to Database
    Given The product code service is up and running
    When A new spreadsheet is uploaded and stored in the database
    And The import is fails
    Then The existing data is not deleted and not updated
    And The database is updated to indicate that the spreadsheet import failed

  @Mark
  @US1259178
  @2018.PI03
  Scenario Outline: US1259178::0 - Taxonomy Grid table microservice
    #Test happy paths
    Given a user needs to query the table
    When the user provides the value <reqValue> for <reqField> and <ndbRecValue> for "ndbRec"
    Then the query response provides the most recent record version attributes data
    Examples:
      | reqField    | reqValue    | ndbRecValue |
      | "ndbSpecCD" | "21"        | "P"         |
      | "ndbOrg" | "22"     | "O"      |

  @Mark
  @US1259178
  @2018.PI03
  Scenario Outline: US1259178::1 - Taxonomy Grid table microservice
    #Test optional paths
    Given a user needs to query the table
    When the user provides the value <reqValue> for <reqField> and <ndbRecValue> for "ndbRec"
    And the user provides the optional value <optionalValue> for <optionalField>
    Then the query response provides the most recent record version attributes data
    Examples:
      | reqField      | reqValue      | ndbRecValue   | optionalField | optionalValue |
      | "ndbSpecCD" | "21"        | "P"         | "ndbOrg"    | "21"        |
      | "ndbOrg"    | "22"        | "O"         | "ndbSpecCD" | "22"        |

  @Mark
  @US1259178
  @2018.PI03
  Scenario Outline: US1259178::2 - Taxonomy Grid table microservice
    #Tests both bad paths
    Given a user needs to query the table
    When the user provides the value <reqValue> for <reqField> and <ndbRecValue> for "ndbRec"
    Then the query response returns an error
    Examples:
      | reqField    | reqValue    | ndbRecValue |
      | "ndbSpecCD" | "22"        | "O"         |
      | "ndbOrg" | "22"     | "P"      |

  @Mark
  @US1259178
  @2018.PI03
  Scenario: US1259178::3 - Taxonomy Grid table microservice
    #What values return multiple records and how do we know "all records that matched"?
    Given a user needs to query the table
    When the query response result includes more than one record
    Then the response includes all records that matched

  @kumar,_Sachin
  @US1256689
  @2018.PI03
  Scenario: US1256689::0 - Validate Table data
    Given a template has records populated with data
    When the template is uploaded
    Then the file and data is validated
    And a message is returned to the user that the process was successful

  @kumar,_Sachin
  @US1256689
  @2018.PI03
  Scenario: US1256689::1 - Validate Table data
    Given a template is populated with invalid data
    When the template is uploaded
    Then the file and data is validated
    And a message(s) is returned to the user of all errors and notification that the process failed

