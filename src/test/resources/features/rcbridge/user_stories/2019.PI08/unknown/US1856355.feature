# Last updated on 
@US1856355
@2019.PI08
@releaseFuture
@iterationUnknown
Feature: US1856355 - MAHP GHMO6 Product -  Create OCM Contract Configuration record for migrated contracts upon initial contract event

  @TC849868
  @Manual
  @Functional
  Scenario: TC849868 - [RL0]
    Given all PES ContractsAPI employerandindividual set responses are returned for the contract/deal id
    When one or more providerMPIN provider network contract (pnc) include
    And pnc_prdct_ofr_id == "G0"
    And pnc_contr_arng_cd =="7"
    And pnc_mkt_nbr 45592><45597
    And pnc_cptatn_ffs_ind =="C"
    Then conditions have been met to create MAHP GHMO7 market_product_group for the OCM contract record
    And MAHP GHMO7 stored on the OCM contract record

  @TC849869
  @Manual
  @Functional
  Scenario: TC849869 - [RL1]
    Given conditions have been met for MAHP GHMO7 market_product_group
    And MAHP GHMO7 is include in the OCM contract record
    When all PES ContractsAPI employerandindividual set responses are returned for the contract/deal id
    And one or more providerMPIN provider network contract (pnc) include
    And pnc_prdct_ofr_id == "G0"
    And pnc_contr_arng_cd =="6"
    And pnc_mkt_nbr 45592><45597
    And pnc_prov_contr_role_cd == "S"
    Then conditions have been met to create MAHP GHMO6 market_product_group for the OCM contract record
    And MAHP GHMO6 stored on the OCM contract record
    ###

