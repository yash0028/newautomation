# Last updated on 
@MVP
@10/1_Physician
@Crosswalk
@Priority_1
@CMD
@F201371
Feature: F201371 - Integration Services App3 - Product Description Crosswalk

  @US1283896
  @2018.PI03
  Scenario: US1283896::0 - [Unfinished] Validate Data
    Given a template is populated with data
    When the template is uploaded
    Then the file and data is validated
    And a message is returned to the user that the process was successful

  @US1283896
  @2018.PI03
  Scenario: US1283896::1 - [Unfinished] Validate Data
    Given a template is populated with invalid data
    When the template is uploaded
    Then the file and data is validated
    And a message(s) is returned to the user of all errors and notification that the process failed

  @US1285441
  @2018.PI03
  Scenario: US1285441 - [Continued]Identify new Product Codes
    When the product codes are called from the crosswalk tables
    Then the correct product codes are returned.

  @US1207408
  @2018.PI03
  Scenario: US1207408 - [Continued] User Interface for up and download
    Given the existence of a web UI
    When an authorized user access the URL
    Then the web UI for up/download is available

  @MVP
  @Priority
  @US1260991
  @2018.PI03
  Scenario: US1260991 - [Unfinished] Contract Product Description Crosswalk
    Given a product description to product code crosswalk exists
    When exchanging information about the products included or excluded from an Exari contract
    Then the crosswalk provides the product code identifier

  @MVP
  @US1208966
  @2018.PI03
  Scenario: US1208966 - SSO analysis SPIKE
    Given Exari will need SSO to access UHG Resources
    Then a developer will need to research the SSO capabilities.

  @US1234925
  @2018.PI03
  Scenario: US1234925::0 - [Unfinished] Download Crosswalk Template
    Given more than one product description crosswalk record exists in the database
    When access to a previous record version is needed
    Then the previous record versions are available

  @US1234925
  @2018.PI03
  Scenario: US1234925::1 - [Unfinished] Download Crosswalk Template
    Given an update to the current version of the crosswalk table is needed
    When an administrator downloads a copy of the crosswalk template
    Then the product crosswalk template is made available to the administrator

  @US1260997
  @2018.PI03
  Scenario: US1260997::0 - [Unfinished] [Continued] Download Crosswalk Template
    Given more than one product description crosswalk record exists in the database
    When access to a previous record version is needed
    Then the previous record versions are available

  @US1260997
  @2018.PI03
  Scenario: US1260997::1 - [Unfinished] [Continued] Download Crosswalk Template
    Given an update to the current version of the crosswalk table is needed
    When an administrator downloads a copy of the crosswalk template
    Then the product crosswalk template is made available to the administrator

  @MVP
  @US1199566
  @2018.PI03
  Scenario: US1199566 - Create Table Structure and Data Types
    Given the attributes needed from the crosswalk table is known
    When the information is made available to the system administrator
    Then the table is updated and stores the information

  @MVP
  @US1207278
  @2018.PI03
  Scenario: US1207278::0 - Access and security management
    Given a user requests view-only permissions to the crosswalk table
    When the contract system administrator approves the request
    Then the user is authorized access to view the crosswalk data

  @MVP
  @US1207278
  @2018.PI03
  Scenario: US1207278::2 - Access and security management
    Given a user requests access ot the crosswalk data
    When the contract system administrator does not approve the request
    Then the user is not granted permissions to the crosswalk table
    And the user receives a message that they are not authorized to access

  @MVP
  @US1207178
  @2018.PI03
  Scenario: US1207178::0 - Upload Crosswalk Template
    Given an update to the product description crosswalk is needed
    When an administrator accesses the crosswalk URL web service
    Then the web service page is available

  @MVP
  @US1207178
  @2018.PI03
  Scenario: US1207178::1 - Upload Crosswalk Template
    Given a product description update is required
    When an administrator has the information ready and in needed format
    Then the product description crosswalk is updated

  @MVP
  @US1207178
  @2018.PI03
  Scenario: US1207178::2 - Upload Crosswalk Template
    Given an update file is ready to be uploaded
    When an administrator uploads the file record
    Then the file successfully loads to the database

  @US1283892
  @2018.PI03
  Scenario: US1283892::0 - [Unfinished] Import Data from Spreadsheet into Table
    Given The product code service is up and running
    When A new spreadsheet is uploaded and stored in the database
    And The import is processed successfully
    Then The existing data is deleted
    And The content of spreadsheet is parsed and stored in a database table
    And The database is updated to indicate that the spreadsheet was processed successfully

  @US1283892
  @2018.PI03
  Scenario: US1283892::1 - [Unfinished] Import Data from Spreadsheet into Table
    Given The product code service is up and running
    When A new spreadsheet is uploaded and stored in the database
    And The import is fails
    Then The existing data is not deleted and not updated
    And The database is updated to indicate that the spreadsheet import failed

  @MVP
  @Priority
  @US1283889
  @2018.PI03
  Scenario: US1283889 - [Unfinished] [Continued] Contract Product Description Crosswalk
    Given a product description to product code crosswalk exists
    When exchanging information about the products included or excluded from an Exari contract
    Then the crosswalk provides the product code identifier

  @US1199569
  @2018.PI03
  Scenario: US1199569::0 - [Continued] Validate Data
    Given a template is populated with data
    When the template is uploaded
    Then the file and data is validated
    And a message is returned to the user that the process was successful

  @US1199569
  @2018.PI03
  Scenario: US1199569::1 - [Continued] Validate Data
    Given a template is populated with invalid data
    When the template is uploaded
    Then the file and data is validated
    And a message(s) is returned to the user of all errors and notification that the process failed

  @US1199568
  @2018.PI03
  Scenario: US1199568::0 - [Continued] Import Data from Spreadsheet into Table
    Given The product code service is up and running
    When A new spreadsheet is uploaded and stored in the database
    And The import is processed successfully
    Then The existing data is deleted
    And The content of spreadsheet is parsed and stored in a database table
    And The database is updated to indicate that the spreadsheet was processed successfully

  @US1199568
  @2018.PI03
  Scenario: US1199568::1 - [Continued] Import Data from Spreadsheet into Table
    Given The product code service is up and running
    When A new spreadsheet is uploaded and stored in the database
    And The import is fails
    Then The existing data is not deleted and not updated
    And The database is updated to indicate that the spreadsheet import failed

  @US1234752
  @2018.PI03
  Scenario: US1234752 - [Unfinished] User Interface for up and download
    Given the existence of a web UI
    When an authorized user access the URL
    Then the web UI for up/download is available

  @US1207219
  @2018.PI03
  Scenario: US1207219::0 - [Continued] [Continued] Download Crosswalk Template
    Given more than one product description crosswalk record exists in the database
    When access to a previous record version is needed
    Then the previous record versions are available

  @US1207219
  @2018.PI03
  Scenario: US1207219::1 - [Continued] [Continued] Download Crosswalk Template
    Given an update to the current version of the crosswalk table is needed
    When an administrator downloads a copy of the crosswalk template
    Then the product crosswalk template is made available to the administrator

  @US1300926
  @2018.PI03
  Scenario: US1300926::0 - [Continued] Import Data from Spreadsheet into Table over2MB
    Given The product code service is up and running
    When A new spreadsheet is uploaded and stored in the database
    And The import is processed successfully
    Then The existing data is deleted
    And The content of spreadsheet is parsed and stored in a database table
    And The database is updated to indicate that the spreadsheet was processed successfully

  @US1300926
  @2018.PI03
  Scenario: US1300926::1 - [Continued] Import Data from Spreadsheet into Table over2MB
    Given The product code service is up and running
    When A new spreadsheet is uploaded and stored in the database
    And The import is fails
    Then The existing data is not deleted and not updated
    And The database is updated to indicate that the spreadsheet import failed

  @US1285453
  Scenario: US1285453 - [Continued]Audit and History the new Product Codes
    Given the application screen is ready
    When a table file is uploaded
    Then the previous file record and audit log info is stored in the database

  @US1231899
  @2018.PI03
  Scenario: US1231899 - Styling Template for Crosswalk UI
    Given A UI will be created for the crosswalk template
    Then the UI will be available for the user.

  @MVP
  @Amrutha
  @Priority
  @US1185585
  @2018.PI03
  Scenario Outline: US1185585::0 - [Continued][Continued] [Continued] Contract Product Description Crosswalk
    Given a product description to product code crosswalk exists
    And using contract description from the corresponding "<contractDescriptionId>"
    When exchanging information about the products included or excluded from an Exari contract
    Then the crosswalk provides the product code identifier of "<productCodeList>"
    Examples:
      | contractDescriptionId | productCodeList       |
      | 2000290  | S0 S1 S2 |
      | 2000300              | C0 C1 C2 P3 S0 S1 S2 |
      | 2000430 | DA      |
      | 2000500 | 009 531 |

  @MVP
  @Amrutha
  @Priority
  @US1185585
  @2018.PI03
  Scenario: US1185585::1 - [Continued][Continued] [Continued] Contract Product Description Crosswalk
    #Fail case
    Given a product description to product code crosswalk does not exist
    When exchanging information about the products included or excluded from an Exari contract
    Then the crosswalk returns an error

  @MVP
  @US1207419
  @2018.PI03
  Scenario: US1207419::0 - Store history and audit metadata
    Given the application screen is ready
    When a file is uploaded
    Then the previous file record and audit log info is stored in the database

  @MVP
  @US1207419
  @2018.PI03
  Scenario: US1207419::1 - Store history and audit metadata
    Given previous file versions exist
    When an authorized user accesses the screen UI
    Then the previous versions are view-able by the user

