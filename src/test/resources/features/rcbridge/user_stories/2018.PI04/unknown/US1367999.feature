# Last updated on 
@US1367999
@2018.PI04
@MVP
@10/1_Physician
@Priority_1
@kumar,_Sachin
@CMD
@F233635
Feature: US1367999 - PCP Specialties Standard definition UHN

  @TC600523
  @Manual
  @Functional
  @US1367999
  @2018.PI04
  Scenario: TC600523 - [RL0]
    Given the provider record includes ContractOrgCd equals "UHN"
    And the NDB Provider Record Type equals "P"
    When the primary NDB Specialty Code value equals one of the qualifying NDB Specialty Code values
    Then the provider record will be "flagged" as a PCP within the database

