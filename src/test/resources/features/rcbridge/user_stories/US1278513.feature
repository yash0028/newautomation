# Last updated on 
@US1278513
@2018.PI03
Feature: US1278513 - Log NDB API (COSMOS) contract master no results found

  @TC564403
  @Automated
  @Functional
  Scenario: TC564403 - [RL0]
    Given: The NDB contract master look up API was executed with DIV, Panel, and COSMOS contract number
    When: The API response was successful
    And: The API returned no results
    Then: Log the following data in the database

