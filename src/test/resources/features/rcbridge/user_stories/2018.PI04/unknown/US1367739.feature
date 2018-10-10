# Last updated on 
@US1367739
@2018.PI04
@MVP
@10/1_Physician
@Priority_1
@kumar,_Sachin
@CMD
@F233635
Feature: US1367739 - Identify UHC EI and MR Pilot Markets

  @TC600526
  @Manual
  @Functional
  @US1367739
  @2018.PI04
  Scenario: TC600526 - [RL1]
    Given [UHG_Site] does not equals one of Central UHN, Northeast UHN, Southeast UHN, West UHN
    When [UHG_ContractSubType_Healthcare] does not equals one of Practitioner Agreement, Medical Group Agreement, Simplified Physician Agreement, Simplified Practitioner Group Agreement, Simplified Medical Group Agreement
    And [UHG_Market_Number] does not equals one of 03413, 13476, 13477, 13478, 13479, 13634, 36555, 45592, 45593, 45594, 45595, 45596, 45597
    Then return the following message, "The selected provider(s) is currently not in scope for Exari contracting."

  @TC600525
  @Manual
  @Functional
  @US1367739
  @2018.PI04
  Scenario: TC600525 - [RL0]
    Given [UHG_Site] equals one of Central UHN, Northeast UHN, Southeast UHN, West UHN
    When [UHG_ContractSubType_Healthcare] equals one of Practitioner Agreement, Medical Group Agreement, Simplified Physician Agreement, Simplified Practitioner Group Agreement, Simplified Medical Group Agreement
    And [UHG_Market_Number] equals one of 03413, 13476, 13477, 13478, 13479, 13634, 36555, 45592, 45593, 45594, 45595, 45596, 45597
    Then contract is included in Pilot

