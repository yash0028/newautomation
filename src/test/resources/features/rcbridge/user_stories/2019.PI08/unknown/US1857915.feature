# Last updated on 
@US1857915
@2019.PI08
@releaseFuture
@iterationUnknown
Feature: US1857915 - MAHP GHMO7 Product -  Create OCM Contract Configuration record for migrated contracts upon initial contract event

  @TC853523
  @Manual
  @Functional
  Scenario: TC853523 - [RL0]
    Given all PES ContractsAPI employerandindividual set responses are returned for the contract/deal id
    When one or more providerMPIN provider network contract (pnc) include MAHP Gated HMO details
    And pnc_prdct_ofr_id == "G0"
    And pnc_contr_arng_cd =="7"
    And pnc_mkt_nbr 45592><45597
    And pnc_cptatn_ffs_ind =="C"
    Then conditions have been met to MAHP GHMO7 within UHG_Market_Product_Services in the OCM record
    And MAHP GHMO7 stored on the OCM
    And the process continues to gather details for the MAHP GHMO6
    ###

