# Last updated on 
@F217187
Feature: F217187 - Contract Master Data (CMD) App2 User Interface and workflow for contract master errors Part 1

  @US1278513
  Scenario: US1278513 - Log NDB API (COSMOS) contract master no results found
    Given: The NDB contract master look up API was executed with DIV, Panel, and COSMOS contract number
    When: The API response was successful
    And: The API returned no results
    Then: Log the following data in the database

