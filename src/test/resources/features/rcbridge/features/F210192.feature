# Last updated on 2018-08-07T19:21:35.555Z
@Priority_1
@CMD2
Feature: F210192 - Contract Meta Data (CMD) - Template Model

  @2018.PI03
  Scenario: US1256685::0
    Given information is neededWhen timely access to the information source can not be achieved or information not available for exchangeAnd information not available in formats neededThen a secondary source of record will be needed

  @2018.PI03
  Scenario: US1256685::1
    Given information is neededWhen timely access to the information source can be achieved or information is available for exchangeAnd information is available in formats neededThen a secondary source of record will not be needed

  @2018.PI03
  Scenario: US1256694::0
    Given a user requests view-only permissions to the Provider Taxonomy Grid table
    When the contract system administrator approves the request
    Then the user is authorized access to view the Provider Taxonomy Grid data

  @2018.PI03
  Scenario: US1256694::1
    Given a user requests update permissions to the Provider Taxonomy Grid table
    When a contract system administrator approves the request
    Then the user is authorized to perform maintenance to the Provider Taxonomy Grid table

  @2018.PI03
  Scenario: US1256694::2
    Given a user requests access ot the Provider Taxonomy Grid data
    When the contract system administrator does not approve the request
    Then the user is not granted permissions to the Provider Taxonomy Grid table
    And the user receives a message that they are not authorized to access

  @2018.PI03
  Scenario: US1256688::0
    Given an update to the table is needed
    When an administrator accesses the table URL web service
    Then the web service page is available

  @2018.PI03
  Scenario: US1256688::1
    Given an update of a record within the table is required
    When an administrator has the information ready to record in the table
    Then the table is updated

  @2018.PI03
  Scenario: US1256688::2
    Given an updated table file is ready to be uploaded
    When an administrator uploads the table file record
    Then the file successfully loads to the database

  @2018.PI03
  Scenario: US1256693::0
    Given more than one Provider Taxonomy Grid record exists in the database
    When access to a previous record version is needed
    Then the previous record versions are available

  @2018.PI03
  Scenario: US1256693::1
    Given an update to the current version of the Provider Taxonomy Grid is needed
    When an administrator downloads a copy of the table template
    Then the Provider Taxonomy Grid template is made available to the administrator

