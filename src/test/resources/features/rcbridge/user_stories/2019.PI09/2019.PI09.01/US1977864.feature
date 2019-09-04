# Last updated on 
@US1977864
@2019.PI09
@2019.PI09.01
@releaseFuture
@iterationFuture
Feature: US1977864 - MAHP GHMO - Capitated PCP Contracts IPA 048

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
    Then the contract configuration detail will consist of the following
    And pnc_prdct_ofr_id == G0
    And pnc_mkt_ipa == 048
    And pnc_fee_sched_nbr == "PCP_OCIMDIPA_Fee_Schedule_ID"
    And set$pnc_contr_arng_cd == 7
    And set$pnc_prov_contr_role_cd == P
    And set$pnc_cptatn_ffs_ind == C

