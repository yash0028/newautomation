# Last updated on 
@US1971337
@2019.PI09
@2019.PI09.02
@releasePresent
@iterationPast
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

  @TC928901
  @Manual
  @Functional
  Scenario: TC928901 - [RL1]
    Given the ndbcontractmaster processed successfully
    And request response details returned
    Then only records with 'contract master name' matching below will be used for selection
      | [fee_schedule]/777/0/G0/23 |
    # Example: nnnnn_95192/777/0/G0/23
    # Format: [marketnumber] / [fee schedule] / [IPA] / [CONARR] / [PRODUCT CODE] / 23

