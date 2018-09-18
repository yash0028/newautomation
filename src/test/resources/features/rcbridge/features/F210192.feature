# Last updated on 
@Priority_1
@CMD2
@F210192
Feature: F210192 - Contract Meta Data (CMD) - Template Model

  @US1256694
  @2018.PI04
  Scenario: US1256694::0 - Access and security management
    Given a user requests view-only permissions to the Provider Taxonomy Grid table
    When the contract system administrator approves the request
    Then the user is authorized access to view the Provider Taxonomy Grid data

  @US1256694
  @2018.PI04
  Scenario: US1256694::1 - Access and security management
    Given a user requests update permissions to the Provider Taxonomy Grid table
    When a contract system administrator approves the request
    Then the user is authorized to perform maintenance to the Provider Taxonomy Grid table

  @US1256694
  @2018.PI04
  Scenario: US1256694::2 - Access and security management
    Given a user requests access ot the Provider Taxonomy Grid data
    When the contract system administrator does not approve the request
    Then the user is not granted permissions to the Provider Taxonomy Grid table
    And the user receives a message that they are not authorized to access

  @US1256688
  @2018.PI04
  Scenario: US1256688::0 - Upload Table template
    Given an update to the table is needed
    When an administrator accesses the table URL web service
    Then the web service page is available

  @US1256688
  @2018.PI04
  Scenario: US1256688::1 - Upload Table template
    Given an update of a record within the table is required
    When an administrator has the information ready to record in the table
    Then the table is updated

  @US1256688
  @2018.PI04
  Scenario: US1256688::2 - Upload Table template
    Given an updated table file is ready to be uploaded
    When an administrator uploads the table file record
    Then the file successfully loads to the database

  @US1256693
  @2018.PI04
  Scenario: US1256693::0 - Download Table Template
    Given more than one Provider Taxonomy Grid record exists in the database
    When access to a previous record version is needed
    Then the previous record versions are available

  @US1256693
  @2018.PI04
  Scenario: US1256693::1 - Download Table Template
    Given an update to the current version of the Provider Taxonomy Grid is needed
    When an administrator downloads a copy of the table template
    Then the Provider Taxonomy Grid template is made available to the administrator

