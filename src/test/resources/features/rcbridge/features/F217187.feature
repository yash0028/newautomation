# Last updated on 
@MVP
@CMD
@CMD_UI
@F217187
Feature: F217187 - Contract Master Data (CMD) App2 User Interface and workflow for contract master errors Part 1

  @US1278513
  @2018.PI03
  Scenario: US1278513 - Log NDB API (COSMOS) contract master no results found
    Given: The NDB contract master look up API was executed with DIV, Panel, and COSMOS contract number
    When: The API response was successful
    And: The API returned no results
    Then: Log the following data in the database

  @US1292129
  @2018.PI03
  Scenario: US1292129 - [Spike] Dev Analysis
    When the developer reads the SID for the CMD Feature
    Then they will understand the development needed for the CMD feature.

  @US1290222
  @2018.PI03
  Scenario: US1290222::0 - CMD Integration with Exari - SSO (Reference Table Admin)
    Given a CMD error record exists
    When the user navigates to the CMD from within Exari contract record
    Then the user is able to view the CMD for that contract record error

  @US1290222
  @2018.PI03
  Scenario: US1290222::1 - CMD Integration with Exari - SSO (Reference Table Admin)
    Given a CMD error record does not exist
    When the user navigates to the CMD from within Exari contract record
    Then a message is returned to the user stating CMD record does not exist
    And user returned to the Exari contract record session from which they

  @US1290222
  @2018.PI03
  Scenario: US1290222::2 - CMD Integration with Exari - SSO (Reference Table Admin)
    Given an CMD error record exists
    When the user navigates to Exari from within the CMD contract record
    Then the user returns to Exari contract record

