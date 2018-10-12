# Last updated on 
@US1368002
@2018.PI04
@MVP
@10/1_Physician
@Priority_1
@kumar,_Sachin
@CMD
@F233635
Feature: US1368002 - HERITAGE PRODUCT SILENT INCLUSION

  @TC608275
  @Manual
  @Functional
  @US1368002
  @2018.PI04
  Scenario: TC608275 - [RL1]
    Given the provider/contract is within the pilot market
    When PRODUCT_SERVICES_EXCLUDED does include 'Heritage%'
    And UHG_SITE = UHN Northeast, Central, West, Southeast
    And PAYMENT_POLICIES-MCQ is NOT UnitedHealthcare River Valley
    Then create payloads that include MARKET PRODUCT GROUP (equivalent) which should exclude PRODUCT_CD = EL, EO, ER and V3

  @TC600549
  @Manual
  @Functional
  @US1368002
  @2018.PI04
  Scenario: TC600549 - [RL0]
    Given the provider/contract is within the pilot market
    When PRODUCT_SERVICES_EXCLUDED does NOT include 'Heritage%'
    And UHG_SITE = UHN Northeast, Central, West, Southeast
    And PAYMENT_POLICIES-MCQ is NOT UnitedHealthcare River Valley
    Then create payloads that include MARKET PRODUCT GROUP (equivalent) which should include PRODUCT_CD = EL, EO, ER and V3

