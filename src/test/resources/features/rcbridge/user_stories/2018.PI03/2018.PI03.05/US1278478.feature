# Last updated on 
@US1278478
@2018.PI03
@2018.PI03.05
@MVP
@CMD_UI
@NDB
@CMD
@F217187
Feature: US1278478 - Publish NDB API contract master null response

  @TC589269
  @Automated
  @Functional
  @US1278478
  @2018.PI03
  @2018.PI03.05
  Scenario: TC589269 - [RL1] Check Single Null
    # Scenario 1B (UNET search with mkt, fee schedule, and a single product code)
    Given The NDB contract master look up API was executed with market number, fee schedule, and a single product code
    And the fee schedule "96192" & the product code group "PPO" & the product code "P5"
    When The API response was successful
    Then The API returned no results
    And the API returned a return code of "10"

  @TC589310
  @Automated
  @Functional
  @US1278478
  @2018.PI03
  @2018.PI03.05
  Scenario: TC589310 - [RL2] Check Multiple Null
    # Scenario 2 (UNET search with mkt, fee schedule, and multiple product codes
    Given The NDB contract master look up API was executed with market number, fee schedule, and more than one product code
    And the fee schedule "96192222222" & the product code group "1Net" & the product code "P1"
    And the fee schedule "96192" & the product code group "PPO" & the product code "P5"
    When The API response was successful
    Then The API returned no results
    And the API returned a return code of "2" and "10"

  @TC565495
  @Automated
  @Functional
  @US1278478
  @2018.PI03
  @2018.PI03.05
  Scenario: TC565495 - [RL0] Check Single Null
    # Scenario 1A (UNET search with mkt, fee schedule, and a single product code) bad fee schedule
    Given The NDB contract master look up API was executed with market number, fee schedule, and a single product code
    And the fee schedule "96192222222" & the product code group "1Net" & the product code "P1"
    When The API response was successful
    Then The API returned no results
    And the API returned a return code of "2"

