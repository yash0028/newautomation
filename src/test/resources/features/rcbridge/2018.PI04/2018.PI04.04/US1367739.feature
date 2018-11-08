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
@releasePresent
@iterationPresent
Feature: US1367739 - Identify UHC EI and MR Pilot Markets

  @TC600526
  @Manual
  @Functional
  @Contract_Rules
  Scenario: TC600526 - [RL1]
    Given "uhgSite" equals "Northeast UHN"
    When "uhgContractSubtypeHealthcare" equals one of Practitioner Agreement, Medical Group Agreement, Simplified Physician Agreement, Simplified Practitioner Group Agreement, Simplified Medical Group Agreement
    And "uhgMarketNumber" equals one of 03413, 13476, 13477, 13478, 13479, 13634, 36555, 45592, 45593, 45594, 45595, 45596, 45597
    Then contract is included in Pilot

  @TC600525
  @Manual
  @Functional
  @Contract_Rules
  Scenario Outline: TC600525 - [RL0]
    Given "uhgSite" equals "Central UHN"
    When "uhgContractSubtypeHealthcare" equals one of "<uhgContractSubtypeHealthcare>"
    And "uhgMarketNumber" equals one of "<uhgMarketNumber>"
    Then contract is included in Pilot
    Examples:
      | uhgContractSubtypeHealthcare            | uhgMarketNumber                         |
      | Practitioner Agreement                  | 03413                                   |
      | Practitioner Agreement                  | 13476                                   |
      | Practitioner Agreement                  | 13477                                   |
      | Practitioner Agreement                  | 13478                                   |
      | Practitioner Agreement                  | 13479                                   |
      | Practitioner Agreement                  | 13634                                   |
      | Practitioner Agreement                  | 36555                                   |
      | Practitioner Agreement                  | 45592                                   |
      | Practitioner Agreement                  | 45593                                   |
      | Practitioner Agreement                  | 45594                                   |
      | Practitioner Agreement                  | 45595                                   |
      | Practitioner Agreement                  | 45596                                   |
      | Practitioner Agreement                  | 45597                                   |
      | Medical Group Agreement                 | 03413                                   |
      | Medical Group Agreement                 | 13476                                   |
      | Medical Group Agreement                 | 13477                                   |
      | Medical Group Agreement                 | 13478                                   |
      | Medical Group Agreement                 | 13479                                   |
      | Medical Group Agreement                 | 13634                                   |
      | Medical Group Agreement                 | 36555                                   |
      | Medical Group Agreement                 | 45592                                   |
      | Medical Group Agreement                 | 45593                                   |
      | Medical Group Agreement                 | 45594                                   |
      | Medical Group Agreement                 | 45595                                   |
      | Medical Group Agreement                 | 45596                                   |
      | Medical Group Agreement                 | 45597                                   |
      | Simplified Physician Agreement          | 03413                                   |
      | Simplified Physician Agreement          | 13476                                   |
      | Simplified Physician Agreement          | 13477                                   |
      | Simplified Physician Agreement          | 13478                                   |
      | Simplified Physician Agreement          | 13479                                   |
      | Simplified Physician Agreement          | 13634                                   |
      | Simplified Physician Agreement          | 36555                                   |
      | Simplified Physician Agreement          | 45592                                   |
      | Simplified Physician Agreement          | 45593                                   |
      | Simplified Physician Agreement          | 45594                                   |
      | Simplified Physician Agreement          | 45595                                   |
      | Simplified Physician Agreement          | 45596                                   |
      | Simplified Physician Agreement          | 45597                                   |
      | Simplified Practitioner Group Agreement | 03413                                   |
      | Simplified Practitioner Group Agreement | 13476                                   |
      | Simplified Practitioner Group Agreement | 13477                                   |
      | Simplified Practitioner Group Agreement | 13478                                   |
      | Simplified Practitioner Group Agreement | 13479                                   |
      | Simplified Practitioner Group Agreement | 13634                                   |
      | Simplified Practitioner Group Agreement | 36555                                   |
      | Simplified Practitioner Group Agreement | 45592                                   |
      | Simplified Practitioner Group Agreement | 45593                                   |
      | Simplified Practitioner Group Agreement | 45594                                   |
      | Simplified Practitioner Group Agreement | 45595                                   |
      | Simplified Practitioner Group Agreement | 45596                                   |
      | Simplified Practitioner Group Agreement | 45597                                   |
      | Simplified Medical Group Agreement      | 03413                                   |
      | Simplified Medical Group Agreement      | 13476                                   |
      | Simplified Medical Group Agreement      | 13477                                   |
      | Simplified Medical Group Agreement      | 13478                                   |
      | Simplified Medical Group Agreement      | 13479                                   |
      | Simplified Medical Group Agreement      | 13634                                   |
      | Simplified Medical Group Agreement      | 36555                                   |
      | Simplified Medical Group Agreement      | 45592                                   |
      | Simplified Medical Group Agreement      | 45593                                   |
      | Simplified Medical Group Agreement      | 45594                                   |
      | Simplified Medical Group Agreement      | 45595                                   |
      | Simplified Medical Group Agreement      | 45596                                   |
      | Simplified Medical Group Agreement      | 45597                                   |

  @TC630783
  @Manual
  @Functional
  @Contract_Rules
  Scenario: TC630783 - [RL6]
    When "uhgMarketNumber" does not equal one of 03413, 13476, 13477, 13478, 13479, 13634, 36555, 45592, 45593, 45594, 45595, 45596, 45597
    Then return the following message "The selected provider(s) is currently not in scope for Exari contracting."

  @TC627486
  @Manual
  @Functional
  @Contract_Rules
  Scenario: TC627486 - [RL3]
    Given "uhgSite" equals "West UHN"
    When "uhgContractSubtypeHealthcare" equals one of Practitioner Agreement, Medical Group Agreement, Simplified Physician Agreement, Simplified Practitioner Group Agreement, Simplified Medical Group Agreement
    And "uhgMarketNumber" equals one of 03413, 13476, 13477, 13478, 13479, 13634, 36555, 45592, 45593, 45594, 45595, 45596, 45597
    Then contract is included in Pilot
    # --These fields are included in both the Exari and UCM contract model. (Note: OCM Model has more elements than the Exari Model)

  @TC627485
  @Manual
  @Functional
  @Contract_Rules
  Scenario: TC627485 - [RL2]
    Given "uhgSite" equals "Southeast UHN"
    When "uhgContractSubtypeHealthcare" equals one of Practitioner Agreement, Medical Group Agreement, Simplified Physician Agreement, Simplified Practitioner Group Agreement, Simplified Medical Group Agreement
    And "uhgMarketNumber" equals one of 03413, 13476, 13477, 13478, 13479, 13634, 36555, 45592, 45593, 45594, 45595, 45596, 45597
    Then contract is included in Pilot

  @TC630781
  @Manual
  @Functional
  @Contract_Rules
  Scenario: TC630781 - [RL4]
    When "uhgSite" does not equals one of Central UHN, Northeast UHN, Southeast UHN, West UHN
    Then return the following message "The selected provider(s) is currently not in scope for Exari contracting."

  @TC630782
  @Manual
  @Functional
  @Contract_Rules
  Scenario: TC630782 - [RL5]
    When "uhgContractSubtypeHealthcare" does not equal one of Practitioner Agreement, Medical Group Agreement, Simplified Physician Agreement, Simplified Practitioner Group Agreement, Simplified Medical Group Agreement
    Then return the following message "The selected provider(s) is currently not in scope for Exari contracting."

