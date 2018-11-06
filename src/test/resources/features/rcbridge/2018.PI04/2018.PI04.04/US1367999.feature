# Last updated on 
@Contract_Rules
@US1367999
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
Feature: US1367999 - PCP Specialties Standard definition UHN

  @TC600523
  @Manual
  @Functional
  @Contract_Rules
  @US1367999
  @2018.PI04
  @2018.PI04.04
  Scenario: TC600523 - [RL0]
    Given the provider record "contractOrgCd" equals "UHN"
    And the NDB "providerRecordType" equals "P"
    When the primary NDB Specialty Code value equals one of the qualifying NDB Specialty Code values
    Then the provider record will be "flagged" as a PCP within the optum contract(coming from the Exari roster populated by PES information that will include the org. and/or spec code)

  @TC600524
  @Manual
  @Functional
  @Contract_Rules
  @US1367999
  @2018.PI04
  @2018.PI04.04
  Scenario: TC600524 - [RL1]
    Given the provider record "contractOrgCd" equals "UHN"
    And the NDB "providerRecordType" equals "P"
    When the primary NDB Specialty Code value IS NOT equals one of the qualifying NDB Specialty Code values
    Then the provider record will be "flagged" as a Specialist within the optum contract(coming from the Exari roster populated by PES information that will include the org. and/or spec code)
    #Note: Rule only applies if it meets the PCP conditions, otherwise its a specialist or Not Applicable.
    #Reference:Qualifying NDB Specialty Code values (IS THIS LIST CORRECT? In some state OBGYN is considered primary care by state regs.)Because its a state based exception for purposes of benefit administration they can get a pcp copay, #but their is no member attribution to OBGYN. Bc we have a stated based rule, at the product level we are not replicating tables in NDB . We are aware of these exceptions.
    # 001 General Practice
    # 008 Family Practice
    # 011 Internal Medicine
    # 037 Pediatrics
    # 038 Geriatric Medicine
    # 258 Pediatric Adolescent
    # 276 Adolescent Medicine

