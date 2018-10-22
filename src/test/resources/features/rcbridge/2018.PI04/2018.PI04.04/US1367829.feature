# Last updated on 
@US1367829
@2018.PI04
@2018.PI04.04
@MVP
@10/1_Physician
@Priority_1
@CMD
@Amrutha
@F209320
@releasePresent
@iterationFuture
Feature: US1367829 - PPO Product Group Table Number

  @TC600530
  @Manual
  @Functional
  @US1367829
  @2018.PI04
  @2018.PI04.04
  Scenario: TC600530 - [RL2]
    Given the PPO Product is active on the Exari contract
    And the Group Table Number is identified and returned
    When the Group Table Number is excluded form the Payload
    Then the payload will reject due to missing information
    And a Type 2 error will be produced

  @TC600529
  @Manual
  @Functional
  @US1367829
  @2018.PI04
  @2018.PI04.04
  Scenario: TC600529 - [RL1]
    Given the PPO Product is active on the Exari contract
    When the corresponding Site ID is located on the Product Crosswalk table from UHC_CMD Table
    Then the Group Table Number (NUMBER_GROUP_TABLE) property value is returned
    And included in the NDB/UNET Payload

  @TC600531
  @Manual
  @Functional
  @US1367829
  @2018.PI04
  @2018.PI04.04
  Scenario: TC600531 - [RL3]
    Given the PPO Product is not active on the Exari contract
    Then no Group Table Number will be returned
    And it will be excluded from the NDB/UNET Payload

  @TC600528
  @Manual
  @Functional
  @US1367829
  @2018.PI04
  @2018.PI04.04
  Scenario: TC600528 - [RL0]
    Given the PPO Product is active on the Exari contract
    When the UCH_UHN_Market property was received from the Exari UCM
    And the UHC Market table record contains the corresponding SITE ID
    Then the Group Table Number (NUMBER_GROUP_TABLE) property value is returned
    And included in the NDB/UNET Payload

