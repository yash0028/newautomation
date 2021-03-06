# Last updated on 
@Contract_Rules
@US1367999
@2018.PI04
@2018.PI04.04
@releasePast
@iterationPast
Feature: US1367999 - PCP Specialties Standard definition UHN

  @TC600523
  @Automated
  @Functional
  @Contract_Rules
  Scenario Outline: TC600523 - [RL0] Validate PCP Results
    Given the provider record "contractOrgCd" equals "UHN"
    And the NDB "ndbProviderType" equals "P"
    When the primary "pcpSpecialtyCode" value equals one of "<specialtyCode>"
    Then the provider record will be flagged as a "PCP" within the optum contract
    # (coming from the Exari roster populated by PES information that will include the org. and/or spec code)
    Examples:
      | specialtyCode |
      | 008           |
      | 011           |
      | 037           |
      | 038           |
      | 258           |
      | 276           |

  @TC600524
  @Automated
  @Functional
  @Contract_Rules
  Scenario Outline: TC600524 - [RL1] Validate Specialist Results
    Given the provider record "contractOrgCd" equals "UHN"
    And the NDB "ndbProviderType" equals "P"
    When the primary "pcpSpecialtyCode" value equals one of invalid "<specialtyCode>"
    Then the provider record will be flagged as a "Specialist" within the optum contract
    # (coming from the Exari roster populated by PES information that will include the org. and/or spec code)
    Examples:
      | specialtyCode |
      | 002           |
      | 009           |
      | 013           |
      | 030           |
      | 260           |
      | 280           |
    # Note: Rule only applies if it meets the PCP conditions, otherwise its a specialist or Not Applicable.
    # Reference:Qualifying NDB Specialty Code values (IS THIS LIST CORRECT? In some state OBGYN is considered primary care by state regs.)Because its a state based exception for purposes of benefit administration they can get a pcp copay,
    # but their is no member attribution to OBGYN. Bc we have a stated based rule, at the product level we are not replicating tables in NDB . We are aware of these exceptions.
    # 001 General Practice
    # 008 Family Practice
    # 011 Internal Medicine
    # 037 Pediatrics
    # 038 Geriatric Medicine
    # 258 Pediatric Adolescent
    # 276 Adolescent Medicine

