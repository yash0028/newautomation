# Last updated on 
@MVP
@CMD
@CMD_UI
@F217187
Feature: F217187 - Contract Master Data (CMD) App2 User Interface and workflow for contract master errors Part 1

  @US1278479
  @2018.PI03
  Scenario: US1278479::0 - Publish NDB API contract master more than one response
    # Scenario 1 (UNET search with mkt, fee schedule, and a single product code)
    Given: The NDB contract master look up API was executed with market number, fee schedule, and a single product code
    When: The API response was successful
    And: The API returned more than one contract master
    Then: Add the contract master response to the Kafka Event topic

  @US1278479
  @2018.PI03
  Scenario: US1278479::1 - Publish NDB API contract master more than one response
    # Scenario 2 (UNET search with mkt, fee schedule, and multiple product codes
    Given: The NDB contract master look up API was executed with market number, fee schedule, and more than one product code
    When: The API response was successful
    And: The API returned more than one contract master
    Then: Add the contract master response to the Kafka Event Topic

  @US1292129
  @2018.PI03
  Scenario: US1292129 - [Spike] Dev Analysis
    When the developer reads the SID for the CMD Feature
    Then they will understand the development needed for the CMD feature.

