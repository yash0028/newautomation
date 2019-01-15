# Last updated on 
@Contract_Rules
@US1367739
@2018.PI04
@2018.PI04.04
@releasePast
@iterationPast
Feature: US1367739 - Identify UHC EI and MR Pilot Markets

  @TC600525
  @Automated
  @Functional
  @Contract_Rules
  Scenario Outline: TC600525 - [RL0] Validate in pilot for Central UHN
    Given "uhgSite" equals "Central"
    When "uhgContractSubtypeHealthcare" equals one of "<uhgContractSubtypeHealthcare>"
    And "uhgMarketNumber" equals one of "<uhgMarketNumber>"
    Then contract is included in Pilot
    Examples:
      | uhgContractSubtypeHealthcare | uhgMarketNumber              |
      | PAT                          | 13476                        |
      | PAT                          | 13477                        |
      | PAT                          | 13478                        |
      | PAT                          | 13479                        |
      | PAT                          | 13634                        |
      | MGA                          | 13476                        |
      | MGA                          | 13477                        |
      | MGA                          | 13478                        |
      | MGA                          | 13479                        |
      | MGA                          | 13634                        |
      | SPA                          | 13476                        |
      | SPA                          | 13477                        |
      | SPA                          | 13478                        |
      | SPA                          | 13479                        |
      | SPA                          | 13634                        |
      | SPG                          | 13476                        |
      | SPG                          | 13477                        |
      | SPG                          | 13478                        |
      | SPG                          | 13479                        |
      | SPG                          | 13634                        |
      | SMG                          | 13476                        |
      | SMG                          | 13477                        |
      | SMG                          | 13478                        |
      | SMG                          | 13479                        |
      | SMG                          | 13634                        |

  @TC600526
  @Automated
  @Functional
  @Contract_Rules
  Scenario Outline: TC600526 - [RL1] Validate in pilot for Northeast UHN
    Given "uhgSite" equals "Northeast"
    When "uhgContractSubtypeHealthcare" equals one of "<uhgContractSubtypeHealthcare>"
    And "uhgMarketNumber" equals one of "<uhgMarketNumber>"
    Then contract is included in Pilot
    Examples:
      | uhgContractSubtypeHealthcare | uhgMarketNumber              |
      | PAT                          | 45592                        |
      | PAT                          | 45593                        |
      | PAT                          | 45594                        |
      | PAT                          | 45595                        |
      | PAT                          | 45597                        |
      | MGA                          | 45592                        |
      | MGA                          | 45593                        |
      | MGA                          | 45594                        |
      | MGA                          | 45595                        |
      | MGA                          | 45597                        |
      | SPA                          | 45592                        |
      | SPA                          | 45593                        |
      | SPA                          | 45594                        |
      | SPA                          | 45595                        |
      | SPA                          | 45597                        |
      | SPG                          | 45592                        |
      | SPG                          | 45593                        |
      | SPG                          | 45594                        |
      | SPG                          | 45595                        |
      | SPG                          | 45597                        |
      | SMG                          | 45592                        |
      | SMG                          | 45593                        |
      | SMG                          | 45594                        |
      | SMG                          | 45595                        |
      | SMG                          | 45597                        |

  @TC627485
  @Automated
  @Functional
  @Contract_Rules
  Scenario Outline: TC627485 - [RL2] Validate in pilot for Southeast UHN
    Given "uhgSite" equals "Southeast"
    When "uhgContractSubtypeHealthcare" equals one of "<uhgContractSubtypeHealthcare>"
    And "uhgMarketNumber" equals one of "<uhgMarketNumber>"
    Then contract is included in Pilot
    Examples:
      | uhgContractSubtypeHealthcare | uhgMarketNumber              |
      | PAT                          | 03413                        |
      | MGA                          | 03413                        |
      | SPA                          | 03413                        |
      | SPG                          | 03413                        |
      | SMG                          | 03413                        |

  @TC627486
  @Automated
  @Functional
  @Contract_Rules
  Scenario Outline: TC627486 - [RL3] Validate in pilot for West UHN
    Given "uhgSite" equals "West"
    When "uhgContractSubtypeHealthcare" equals one of "<uhgContractSubtypeHealthcare>"
    And "uhgMarketNumber" equals one of "<uhgMarketNumber>"
    Then contract is included in Pilot
    Examples:
    # --These fields are included in both the Exari and UCM contract model. (Note: OCM Model has more elements than the Exari Model)
      | uhgContractSubtypeHealthcare | uhgMarketNumber              |
      | PAT                          | 36555                        |
      | MGA                          | 36555                        |
      | SPA                          | 36555                        |
      | SPG                          | 36555                        |
      | SMG                          | 36555                        |

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

