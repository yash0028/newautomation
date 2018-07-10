# Last updated on 2018-07-09T21:19:51.756Z
@MVP
@Priority_1
Feature: F201371 - Integration Services - Product Description Crosswalk

  @MVP
  @2018.PI03
  Scenario: US1207178::0
    Given an update to the product description crosswalk is needed
    When an administrator accesses the crosswalk URL web service
    Then the web service page is available

  @MVP
  @2018.PI03
  Scenario: US1207178::1
    Given a product description update is required
    When an administrator has the information ready and in needed format
    Then the product description crosswalk is updated

  @MVP
  @2018.PI03
  Scenario: US1207178::2
    Given an update file is ready to be uploaded
    When an administrator uploads the file record
    Then the file successfully loads to the database

  @2018.PI03
  Scenario: US1207408
    Given the existence of a web UI
    When an authorized user access the URL
    Then the web UI for up/download is available

  @2018.PI03
  Scenario: US1199568::0
    Given The product code service is up and running
    When A new spreadsheet is uploaded and stored in the database
    And The import is processed successfully
    Then The existing data is deleted
    And The content of spreadsheet is parsed and stored in a database table
    And The database is updated to indicate that the spreadsheet was processed successfully

  @2018.PI03
  Scenario: US1199568::1
    Given The product code service is up and running
    When A new spreadsheet is uploaded and stored in the database
    And The import is fails
    Then The existing data is not deleted and not updated
    And The database is updated to indicate that the spreadsheet import failed

  @MVP
  @Priority
  @2018.PI03
  Scenario: US1185585
    Given a product description to product code crosswalk exists
    When exchanging information about the products included or excluded from an Exari contract
    Then the crosswalk provides the product code identifier

  @MVP
  @2018.PI03
  Scenario: US1199566
    Given the attributes needed from the crosswalk table is known
    When the information is made available to the system administrator
    Then the table is updated and stores the information

