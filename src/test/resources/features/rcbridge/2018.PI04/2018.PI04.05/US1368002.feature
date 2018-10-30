# Last updated on 
@US1368002
@2018.PI04
@2018.PI04.05
@MVP
@10/1_Physician
@Priority_1
@kumar,_Sachin
@CMD
@F233635
@releasePresent
@iterationFuture
Feature: US1368002 - HERITAGE PRODUCT SILENT INCLUSION

  @RC_unlinked
  @TC611133
  @Manual
  @Functional
  @US1368002
  @2018.PI04
  @2018.PI04.05
  Scenario: TC611133 - [RL2]
    Given UHG_SITE = UHN Northeast, Central, West, Southeast
    And UHG Market_Number-DMCQ=03413 (Field in the UCM Model)
    When PRODUCT_SERVICES_EXCLUDED does NOT include 'Heritage%'
    And PAYMENT_POLICIES-MCQ is NOT UnitedHealthcare River Valley
    Then create payloads that include MARKET PRODUCT GROUP:HRTG CHOICE RV,HRTG OPTIONS RV,HRTG SEL ADV CHOICE,HRTG SEL ADV OPTION (equivalent) which should exclude PRODUCT_CD = EL, EO, ER and V3

