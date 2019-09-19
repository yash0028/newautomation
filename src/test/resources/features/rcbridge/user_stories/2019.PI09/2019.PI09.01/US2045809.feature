# Last updated on 
@Contract_Rules
@US2045809
@2019.PI09
@2019.PI09.01
@releasePresent
@iterationPast
Feature: US2045809 - HERITAGE PRODUCT IPA DETERMINATION - Update

  @TC975752
  @Automated
  @Functional
  @Contract_Rules
  Scenario Outline: TC975752 - [RL0] Validate market product network number for River Valley exclusions
    # Scenario 1
    Given silent inclusion criteria for "MARKET_PRODUCT" values "HRTG CHOICE RV" has been met
    When "paymentPoliciesMcq" does NOT include "UnitedHealthcare River Valley"
    And "marketNumberDmcq" = "03413"
    And "ndbProductCode" = "<productCode>"
    Then "marketProductNetwork" value of "<productNetwork>" recorded in the OCM record
    Examples:
      | productCode | productNetwork |
      | EL          | 706            |
      | EO          | 708            |
      | ER          | 712            |
      | V3          | 714            |

  @TC975753
  @Automated
  @Functional
  @Contract_Rules
  Scenario Outline: TC975753 - [RL1] Validate market product network number for River Valley inclusions
    # Scenario 2
    # reference: NDB PRODUCT_CD = EL and NDB MKT IPA 706 (Choice/UHC Evidence Based)
    Given silent inclusion criteria for "MARKET_PRODUCT" values "HRTG CHOICE RV" has been met
    When "paymentPoliciesMcq" does include "UnitedHealthcare River Valley"
    And "marketNumberDmcq" = "03413"
    And "ndbProductCode" = "<productCode>"
    Then "marketProductNetwork" value of "<productNetwork>" recorded in the OCM record
    Examples:
      | productCode | productNetwork |
      | EL          | 705            |
      | EO          | 707            |
      | ER          | 711            |
      | V3          | 713            |

