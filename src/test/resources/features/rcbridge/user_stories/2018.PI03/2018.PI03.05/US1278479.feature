# Last updated on 
@US1278479
@2018.PI03
@2018.PI03.05
@MVP
@CMD_UI
@NDB
@CMD
@F217187
@releasePast
@iterationPast
Feature: US1278479 - Publish NDB API contract master more than one response

  @TC587365
  @Automated
  @Functional
  @US1278479
  @2018.PI03
  @2018.PI03.05
  Scenario: TC587365 - [RL1] Check Mutliple
    # Scenario 2 (UNET search with mkt, fee schedule, and multiple product codes
    Given The NDB contract master look up API was executed with market number, fee schedule, and more than one product code
    And the fee schedule "96192" & the product code group "1Net" & the product code "P1"
    And the fee schedule "96192" & the product code group "PPO" & the product code "P3"
    When The API response was successful
    Then The API returned one or more contract masters
    And Add the contract master response to the Kafka Event topic

  @TC565739
  @Automated
  @Functional
  @US1278479
  @2018.PI03
  @2018.PI03.05
  Scenario: TC565739 - [RL0] Check Single
    # Scenario 1 (UNET search with mkt, fee schedule, and a single product code)
    Given The NDB contract master look up API was executed with market number, fee schedule, and a single product code
    And the fee schedule "96192" & the product code group "1Net" & the product code "P1"
    When The API response was successful
    Then The API returned one or more contract masters
    And Add the contract master response to the Kafka Event topic

