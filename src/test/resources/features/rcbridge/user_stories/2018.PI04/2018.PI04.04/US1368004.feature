# Last updated on 
@Contract_Rules
@US1368004
@2018.PI04
@2018.PI04.04
@releasePast
@iterationPast
Feature: US1368004 - HERITAGE PRODUCT IPA DETERMINATION

  @TC600537
  @Manual
  @Functional
  @Contract_Rules
  Scenario: TC600537 - [RL0] Validate receiving 706
    Given silent inclusion criteria for "MARKET_PRODUCT" values "HRTG CHOICE RV" has been met
    When "paymentPoliciesMcq" does NOT include "UnitedHealthcare River Valley"
    And "marketNumberDmcq" = "03413"
    Then "marketProductNetwork" value of "706" recorded in the OCM record

  @TC611124
  @Manual
  @Functional
  @Contract_Rules
  Scenario: TC611124 - [RL1] Validate receiving 705
    # reference: NDB PRODUCT_CD = EL and NDB MKT IPA 706 (Choice/UHC Evidence Based)
    Given silent inclusion criteria for "MARKET_PRODUCT" values "HRTG CHOICE RV" has been met
    When "paymentPoliciesMcq" does include "UnitedHealthcare River Valley"
    And "marketNumberDmcq" = "03413"
    Then "marketProductNetwork" value of "705" recorded in the OCM record

  @TC611125
  @Automated
  @Functional
  @Contract_Rules
  Scenario: TC611125 - [RL2] Validate bad request for silent inclusion not met
    Given silent inclusion criteria for "MARKET_PRODUCT" values "HRTG CHOICE RV" has NOT been met
    Then return a Bad Request error
    # reference: NDB PRODUCT_CD = EL and NDB MKT IPA = 705 (Choice/RV Med Nec)
    # Ask Developer or Jeff C how to write this.

  @TC625448
  @Automated
  @Functional
  @Contract_Rules
  Scenario: TC625448 - [RL3] Validate bad request for payment policies being invalid
    Given "paymentPoliciesMcq" does NOT include "UnitedHealthcare River Valley%"
    Then return a Bad Request error

  @TC625449
  @Automated
  @Functional
  @Contract_Rules
  Scenario: TC625449 - [RL4] Validate bad request for market number being invalid
    Given "marketNumberDmcq" = "03413"
    Then return a Bad Request error

