# Last updated on 
@Contract_Rules
@US1367739
@2018.PI04
@2018.PI04.04
@MVP
@10/1_Physician
@Priority_1
@kumar,_Sachin
@CMD
@F233635
@releasePresent
@iterationPresent
Feature: US1367739 - Identify UHC EI and MR Pilot Markets

  @TC600526
  @Manual
  @Functional
  @Contract_Rules
  @US1367739
  @2018.PI04
  @2018.PI04.04
  Scenario: TC600526 - [RL1]
    When [UHG_Site] does not equals one of Central UHN, Northeast UHN, Southeast UHN, West UHN
    Then return the following message, "The selected provider(s) is currently not in scope for Exari contracting."

  @TC600525
  @Manual
  @Functional
  @Contract_Rules
  @US1367739
  @2018.PI04
  @2018.PI04.04
  Scenario: TC600525 - [RL0]
    Given [UHG_Site] equals one of Central UHN, Northeast UHN, Southeast UHN, West UHN
    When [UHG_ContractSubType_Healthcare] equals one of Practitioner Agreement, Medical Group Agreement, Simplified Physician Agreement, Simplified Practitioner Group Agreement, Simplified Medical Group Agreement
    And [UHG_Market_Number] equals one of 03413, 13476, 13477, 13478, 13479, 13634, 36555, 45592, 45593, 45594, 45595, 45596, 45597
    Then contract is included in Pilot
    # --These fields are included in both the Exari and UCM contract model. (Note: OCM Model has more elements than the Exari Model)

  @TC627486
  @Manual
  @Functional
  @Contract_Rules
  @US1367739
  @2018.PI04
  @2018.PI04.04
  Scenario: TC627486 - [RL3]
    When [UHG_Market_Number] does not equal one of 03413, 13476, 13477, 13478, 13479, 13634, 36555, 45592, 45593, 45594, 45595, 45596, 45597
    Then return the following message, "The selected provider(s) is currently not in scope for Exari contracting."

  @TC627485
  @Manual
  @Functional
  @Contract_Rules
  @US1367739
  @2018.PI04
  @2018.PI04.04
  Scenario: TC627485 - [RL2]
    When [UHG_ContractSubType_Healthcare] does not equal one of Practitioner Agreement, Medical Group Agreement, Simplified Physician Agreement, Simplified Practitioner Group Agreement, Simplified Medical Group Agreement
    Then return the following message, "The selected provider(s) is currently not in scope for Exari contracting."

