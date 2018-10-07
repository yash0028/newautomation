# Last updated on 
@US1367787
@MVP
@10/1_Physician
@Priority_1
@kumar,_Sachin
@CMD
@F233635
Feature: US1367787 - Data not required on Y line formatted contracts

  @TC600551
  @Manual
  @Functional
  @US1367787
  Scenario: TC600551 - [RL1]
    Given a Y or Z line is to be sent to NDB or COSMOS
    When one or more of the fields that do not apply to contract type Y are included in the payload
    Then a Type 2 system error will be logged

  @TC600550
  @Manual
  @Functional
  @US1367787
  Scenario: TC600550 - [RL0]
    Given a Y or Z line is to be sent to NDB or COSMOS
    Then the fields that do not apply to contract type Y will be excluded from the payload

