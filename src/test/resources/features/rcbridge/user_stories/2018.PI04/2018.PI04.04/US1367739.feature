# Last updated on 
@Contract_Rules
@US1367739
@2018.PI04
@2018.PI04.04
@releasePast
@iterationPast
Feature: US1367739 - Identify UHC EI and MR Pilot Markets

  @TC630781
  @Automated
  @Functional
  @Contract_Rules
  Scenario: TC630781 - [RL4] Validate NOT in pilot for invalid site
    When "uhgSite" does not equal one of Central UHN, Northeast UHN, Southeast UHN, West UHN
    Then contract is NOT included in Pilot

  @TC630782
  @Automated
  @Functional
  @Contract_Rules
  Scenario: TC630782 - [RL5] Validate NOT in pilot for invalid contract subtype
    When "uhgContractSubtypeHealthcare" does not equal one of Practitioner Agreement, Medical Group Agreement, Simplified Physician Agreement, Simplified Practitioner Group Agreement, Simplified Medical Group Agreement
    Then contract is NOT included in Pilot

  @TC630783
  @Automated
  @Functional
  @Contract_Rules
  Scenario: TC630783 - [RL6] [RL5] Validate NOT in pilot for invalid market number
    When "uhgMarketNumber" does not equal one of 03413, 13476, 13477, 13478, 13479, 13634, 36555, 45592, 45593, 45594, 45595, 45597
    Then contract is NOT included in Pilot

