# Last updated on 
@US1971337
@2019.PI08
@2019.PI08.05
@releasePresent
@iterationPresent
Feature: US1971337 - MAHP GHMO IPA 777 Configuration Details (Capitation does NOT apply)

  @RC_unlinked
  @TC928901
  @Manual
  @Functional
  Scenario: TC928901 - [RL1]
    Given a provider requires MAHP GHMO contract configuration
    And MAHP GHMO Exception Capitation conditions do NOT apply
    When the contract configuration includes IPA 777
    Then the contract configuration detail will consist of the following
    And pnc_prdct_ofr_id == G0
    And pnc_mkt_ipa == 777
    And pnc_fee_sched_nbr == "UHG_All_Payer_Fee_Schedule_ID"
    And pnc_contr_arng_cd == 0
    And set$pnc_prov_contr_role_cd == S
    And pnc_cptatn_ffs_ind == F
    And pnc_pay_meth_cd == L

