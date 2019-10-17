# Last updated on 
@US1977864
@2019.PI09
@2019.PI09.04
@releasePresent
@iterationPresent
Feature: US1977864 - [Continued] MAHP GHMO - Capitated PCP Contracts IPA 048

  @TC954875
  @Manual
  @Functional
  Scenario: TC954875 - [RL0]
    Given MAHP GHMO product group applies for a contract
    And MAHP GHMO Exception Provider == FALSE
    And MAHP GHMO MultiMarketRadArea == FALSE
    And MAHP GHMO Capitation Exception == TRUE
    When primary Service Location market number = 45592<>45597
    And primary Service Location RadiologyAreaCd = NOVA
    And Service Address primaryindicator =! "S"
    Then the contract master selection process will include the following inputs
    And pnc_prdct_ofr_id == G0
    And pnc_mkt_ipa == 048
    And pnc_fee_sched_nbr == "PCP_OCIMDIPA_Fee_Schedule_ID"
    And pnc_contr_arng_cd == 7

