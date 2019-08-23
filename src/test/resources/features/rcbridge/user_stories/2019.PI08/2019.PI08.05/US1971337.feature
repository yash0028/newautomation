# Last updated on 
@US1971337
@2019.PI08
@2019.PI08.05
@releasePresent
@iterationPresent
Feature: US1971337 - MAHP GHMO IPA 777 Configuration Details (Capitation does NOT apply)

  @TC928900
  @Manual
  @Functional
  Scenario: TC928900 - [RL0]
    Given a provider requires MAHP GHMO contract configuration
    And MAHP GHMO Exception Provider == FALSE
    And MAHP GHMO MultiMarketRadArea == FALSE
    And MAHP GHMO Capitation Exception == FALSE
    And the contract configuration includes IPA 777
    When requesting ndbcontractmaster for G0 product
    Then the input will also include
      | feeSchedule | "All_Payer_Fee_Schedule_ID" or "All_Payer_Fee_Schedule_ID_NPPA" |
      | ipa         | "777"                                                           |

