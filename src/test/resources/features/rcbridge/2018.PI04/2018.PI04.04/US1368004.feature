# Last updated on 
@US1368004
@2018.PI04
@2018.PI04.04
@MVP
@10/1_Physician
@Priority_1
@kumar,_Sachin
@CMD
@F233635
@releasePresent
@iterationFuture
Feature: US1368004 - HERITAGE PRODUCT IPA DETERMINATION

  @TC625448
  @Manual
  @Functional
  @US1368004
  @2018.PI04
  @2018.PI04.04
  Scenario: TC625448 - [RL3]
    Given "PAYMENT_POLICIES-MCQ" does NOT include "UnitedHealthcare River Valley%"
    Then return a Bad Request error

  @TC611124
  @Manual
  @Functional
  @US1368004
  @2018.PI04
  @2018.PI04.04
  Scenario: TC611124 - [RL1]
    # reference: NDB PRODUCT_CD = EL and NDB MKT IPA 706 (Choice/UHC Evidence Based)
    Given silent inclusion criteria for "MARKET_PRODUCT" values "HRTG CHOICE RV" has been met
    When "PAYMENT_POLICIES-MCQ" does include "UnitedHealthcare River Valley%"
    And "UHG_MARKET_NUMBER-DMCQ" = "03413"
    Then "MARKET_PRODUCT_INCLUDED" value "HRTG CHOICE RV" and "MARKET_PRODUCT_NETWORK (IPA)" value of "705" recorded in the OCM record

  @TC625449
  @Manual
  @Functional
  @US1368004
  @2018.PI04
  @2018.PI04.04
  Scenario: TC625449 - [RL4]
    Given "UHG_MARKET_NUMBER-DMCQ" = "03413"
    Then return a Bad Request error

  @TC600537
  @Manual
  @Functional
  @US1368004
  @2018.PI04
  @2018.PI04.04
  Scenario: TC600537 - [RL0]
    Given silent inclusion criteria for "MARKET_PRODUCT" values "HRTG CHOICE RV" has been met
    When "PAYMENT_POLICIES-MCQ" does NOT include "UnitedHealthcare River Valley%"
    And "UHG_MARKET_NUMBER-DMCQ" = "03413"
    Then "MARKET_PRODUCT_INCLUDED" value "HRTG CHOICE RV" and "MARKET_PRODUCT_NETWORK (IPA)" value of "706" recorded in the OCM record

  @TC611125
  @Manual
  @Functional
  @US1368004
  @2018.PI04
  @2018.PI04.04
  Scenario: TC611125 - [RL2]
    Given silent inclusion criteria for "MARKET_PRODUCT" values "HRTG CHOICE RV" has NOT been met
    Then return a Bad Request error
    # reference: NDB PRODUCT_CD = EL and NDB MKT IPA = 705 (Choice/RV Med Nec)
    # Ask Developer or Jeff C how to write this.

