# Last updated on 
@US1278478
@2018.PI03
@2018.PI03.05
Feature: US1278478 - Publish NDB API contract master null response

  @TC589269
  @Manual
  @Functional
  Scenario: TC589269 - [RL1]
    # Scenario 2 (UNET search with mkt, fee schedule, and multiple product codes
    Given The NDB contract master look up API was executed with market number, fee schedule, and more than one product code
    When The API response was successful
    And The API returned no results
    Then Add the following data to the Kafka event topic

