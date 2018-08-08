# Last updated on 2018-08-07T20:28:00.940Z
@MVP
@Priority_1
@10/1_Physician
Feature: F201371 - Integration Services - Product Description Crosswalk

  @2018.PI03
  @2018.PI03.03
  Scenario: US1207408
    Given the existence of a web UI
    When an authorized user access the URL
    Then the web UI for up/download is available

  @MVP
  @Priority
  @2018.PI03
  @2018.PI03.02
  Scenario: US1260991
    Given a product description to product code crosswalk exists
    When exchanging information about the products included or excluded from an Exari contract
    Then the crosswalk provides the product code identifier

  @MVP
  @2018.PI03
  @2018.PI03.01
  Scenario: US1208966
    Given Exari will need SSO to access UHG Resources
    Then a developer will need to research the SSO capabilities.

  @2018.PI03
  @2018.PI03.01
  Scenario: US1234925::0
    Given more than one product description crosswalk record exists in the database
    When access to a previous record version is needed
    Then the previous record versions are available

  @2018.PI03
  @2018.PI03.01
  Scenario: US1234925::1
    Given an update to the current version of the crosswalk table is needed
    When an administrator downloads a copy of the crosswalk template
    Then the product crosswalk template is made available to the administrator

  @2018.PI03
  @2018.PI03.02
  Scenario: US1260997::0
    Given more than one product description crosswalk record exists in the database
    When access to a previous record version is needed
    Then the previous record versions are available

  @2018.PI03
  @2018.PI03.02
  Scenario: US1260997::1
    Given an update to the current version of the crosswalk table is needed
    When an administrator downloads a copy of the crosswalk template
    Then the product crosswalk template is made available to the administrator

  @MVP
  @2018.PI03
  @2018.PI03.01
  Scenario: US1199566
    Given the attributes needed from the crosswalk table is known
    When the information is made available to the system administrator
    Then the table is updated and stores the information

  @MVP
  @2018.PI03
  @2018.PI03.01
  Scenario: US1207178::0
    Given an update to the product description crosswalk is needed
    When an administrator accesses the crosswalk URL web service
    Then the web service page is available

  @MVP
  @2018.PI03
  @2018.PI03.01
  Scenario: US1207178::1
    Given a product description update is required
    When an administrator has the information ready and in needed format
    Then the product description crosswalk is updated

  @MVP
  @2018.PI03
  @2018.PI03.01
  Scenario: US1207178::2
    Given an update file is ready to be uploaded
    When an administrator uploads the file record
    Then the file successfully loads to the database

  Scenario: US1231896
    When A code change is made to the source code repository
    Then The CI/CD build pipeline is triggered on Jenkins
    And The pipeline builds a Docker container with a webserver and the crosswalk UI installed
    And The pipeline deploys the Docker container to OpenShift
    And The pipeline creates Git release tag for the source code repository with an auto-incrementing version number

  @2018.PI03
  @2018.PI03.03
  Scenario: US1199569::0
    Given a template is populated with data
    When the template is uploaded
    Then the file and data is validated
    And a message is returned to the user that the process was successful

  @2018.PI03
  @2018.PI03.03
  Scenario: US1199569::1
    Given a template is populated with invalid data
    When the template is uploaded
    Then the file and data is validated
    And a message(s) is returned to the user of all errors and notification that the process failed

  @2018.PI03
  @2018.PI03.03
  Scenario: US1199568::0
    Given The product code service is up and running
    When A new spreadsheet is uploaded and stored in the database
    And The import is processed successfully
    Then The existing data is deleted
    And The content of spreadsheet is parsed and stored in a database table
    And The database is updated to indicate that the spreadsheet was processed successfully

  @2018.PI03
  @2018.PI03.03
  Scenario: US1199568::1
    Given The product code service is up and running
    When A new spreadsheet is uploaded and stored in the database
    And The import is fails
    Then The existing data is not deleted and not updated
    And The database is updated to indicate that the spreadsheet import failed

  @2018.PI03
  @2018.PI03.01
  Scenario: US1234752
    Given the existence of a web UI
    When an authorized user access the URL
    Then the web UI for up/download is available

  @2018.PI03
  @2018.PI03.03
  Scenario: US1207219::0
    Given more than one product description crosswalk record exists in the database
    When access to a previous record version is needed
    Then the previous record versions are available

  @2018.PI03
  @2018.PI03.03
  Scenario: US1207219::1
    Given an update to the current version of the crosswalk table is needed
    When an administrator downloads a copy of the crosswalk template
    Then the product crosswalk template is made available to the administrator

  @2018.PI03
  @2018.PI03.02
  Scenario: US1231899
    Given A UI will be created for the crosswalk template
    Then the UI will be available for the user.

  @MVP
  @Priority
  @2018.PI03
  @2018.PI03.03
  Scenario: US1185585
    Given a product description to product code crosswalk exists
    When exchanging information about the products included or excluded from an Exari contract
    Then the crosswalk provides the product code identifier

  @MVP
  @2018.PI03
  @2018.PI03.02
  Scenario: US1207419::0
    Given the application screen is ready
    When a file is uploaded
    Then the previous file record and audit log info is stored in the database

  @MVP
  @2018.PI03
  @2018.PI03.02
  Scenario: US1207419::1
    Given previous file versions exist
    When an authorized user accesses the screen UI
    Then the previous versions are view-able by the user

