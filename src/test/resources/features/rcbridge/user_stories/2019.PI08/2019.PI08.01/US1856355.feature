# Last updated on 
@US1856355
@2019.PI08
@2019.PI08.01
@releasePresent
@iterationPresent
Feature: US1856355 - MAHP GHMO6 Product -  Create OCM Contract Configuration record for migrated contracts upon initial contract event

  @TC853530
  @Manual
  @Functional
  Scenario: TC853530 - [RL1]
    Given the OCM record includes MAHP GHMO7 in UHG_Market_Product_Services
    When all PES ContractsAPI employerandindividual set responses are returned for the contract/deal id
    And one or more providerMPIN provider network contract (pnc) include the MAHP Gated HMO product
    And pnc_prdct_ofr_id == "G0"
    And pnc_contr_arng_cd =="6"
    And pnc_mkt_nbr 45592><45597
    And pnc_prov_contr_role_cd == "S"
    Then conditions have been met to MAHP GHMO6 within UHG_Market_Product_Services in the OCM record
    And MAHP GHMO6 stored on the OCM contract record
    And the process is complete
    ###

