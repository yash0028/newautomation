# Last updated on 
@US1898733
@2019.PI08
@2019.PI08.02
@releasePresent
@iterationFuture
Feature: US1898733 - CMD Rules - UHN Enhanced PCP Indicator OREGON PCP IND TABLE

  @TC877728
  @Manual
  @Functional
  Scenario: TC877728 - [RL0]
    Given a valid provider record exist on a contract roster
    And the provider record properties match the conditions in the attached decision table
    When the PCP IND value is needed for the NDB Payloads
    Then the value in column U (set$pnc_prov_contr_role_cd) is assigned for the applicable provider contract records
    And the values for each product group is stored as part of the provider OCM record
    ###

