# Last updated on 
@US1830795
@2019.PI07
@2019.PI07.04
@releasePresent
@iterationPresent
Feature: US1830795 - Enhance NDB API contract master search for Y-format contract masters that process on UNET

  @TC837720
  @Automated
  @Functional
  Scenario: TC837720 - [RL0] Validate UNET search with mkt, fee schedule, and a single product code
    # Scenario 1 (UNET search with mkt, fee schedule, and a single product code)
    Given The NDB contract master look up API was executed with market number, fee schedule, and a single product code
    And the contract master lookup search contains the following data:
      | feeScheduleNumber | 96192     |
      | productCode       | P2        |
      | productGroupCode  | ONENET WC |
      | contractType      | Y         |
      | networkOrgMarket  | 45597     |
      | system            | UNET      |
    When The API response was successful
    Then The API returned one or more contract masters
    And Add the contract master response to the Kafka Event topic

  @TC837808
  @Automated
  @Functional
  Scenario: TC837808 - [RL1] Validate UNET search with mkt, fee schedule, and multiple product codes
    # Scenario 2 (UNET search with mkt, fee schedule, and multiple product codes
    Given The NDB contract master look up API was executed with market number, fee schedule, and more than one product code
    And the contract master lookup search contains the following data:
      | feeScheduleNumber | 96192     |
      | productCode       | P2        |
      | productGroupCode  | ONENET WC |
      | contractType      | Y         |
      | networkOrgMarket  | 45597     |
      | system            | UNET      |
    And the contract master lookup search also contains the following data:
      | feeScheduleNumber | 96192 |
      | productCode       | P3    |
      | productGroupCode  | PPO   |
      | system            | UNET  |
    When The API response was successful
    Then The API returned one or more contract masters
    And Add the contract master response to the Kafka Event topic

