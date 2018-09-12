# Last updated on 
@MVP
@Priority_1
@CMD
@F218723
Feature: F218723 - Contract Master Data (CMD) App2 User Interface and workflow for contract master errors Part 2

  @US1278513
  @2018.PI04
  Scenario: US1278513 - Log NDB API (COSMOS) contract master no results found
    Given: The NDB contract master look up API was executed with DIV, Panel, and COSMOS contract number
    When: The API response was successful
    And: The API returned no results
    Then: Log the following data in the database

