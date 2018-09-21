# Last updated on 
@US1278478
@2018.PI03
@2018.PI03.05
Feature: US1278478 - Publish NDB API contract master null response

  @TC589269
  @Automated
  @Functional
  Scenario: TC589269 - [RL1] Check Multiple Null
    # Scenario 2 (UNET search with mkt, fee schedule, and multiple product codes
    Given The NDB contract master look up API was executed with market number, fee schedule, and more than one product code that are invalid
    When The API response was successful
    Then The API returned no results
    And Add the contract master response to the Kafka Event topic

  @TC589310
  @Manual
  @Functional
  Scenario: TC589310 - [RL2]
    # Scenario 2 (UNET search with mkt, fee schedule, and multiple product codes
    Given The NDB contract master look up API was executed with market number, fee schedule, and more than one product code
      | feeSchedule | 96192222222 | 96192       |
      | productCodeGroup | 1NET             | PPO              |
      | productCode | P1          | P5          |
    When The API response was successful
    Then The API returned no results
    And the API returned a return code of "2" and "10"
    And Add the contract master response to the Kafka Event topic

  @TC565495
  @Automated
  @Functional
  Scenario: TC565495 - [RL0] Check Single Null
    # Scenario 1A (UNET search with mkt, fee schedule, and a single product code) bad fee schedule
    Given The NDB contract master look up API was executed with market number, fee schedule, and a single product code
      | feeSchedule | 96192222222 |
      | productCodeGroup | 1NET             |
      | productCode | P1          |
    When The API response was successful
    Then The API returned no results
    And the API returned a return code of "2"
    And Add the contract master response to the Kafka Event topic

