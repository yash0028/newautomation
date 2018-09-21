# Last updated on 
@US1278479
@2018.PI03
@2018.PI03.05
Feature: US1278479 - Publish NDB API contract master more than one response

  @TC587365
  @Automated
  @Functional
  Scenario: TC587365 - [RL1] Check Mutliple
    # Scenario 2 (UNET search with mkt, fee schedule, and multiple product codes
    Given The NDB contract master look up API was executed with market number, fee schedule, and more than one product code that are valid
    When The API response was successful
    Then The API returned more than one contract master
    And Add the contract master response to the Kafka Event Topic

  @TC565739
  @Automated
  @Functional
  Scenario: TC565739 - [RL0] Check Single
    # Scenario 1 (UNET search with mkt, fee schedule, and a single product code)
    Given The NDB contract master look up API was executed with market number, fee schedule, and a single product code that are valid
    When The API response was successful
    Then The API returned one contract master
    And Add the contract master response to the Kafka Event topic

