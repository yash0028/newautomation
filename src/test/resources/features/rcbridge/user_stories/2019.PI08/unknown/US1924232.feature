# Last updated on 
@#MVP
@US1924232
@2019.PI08
@releasePresent
@iterationUnknown
Feature: US1924232 - MAHP GHMO - Determine Contract_NetworkRoleType

  @TC902693
  @Manual
  @Functional
  @#MVP
  Scenario: TC902693 - [RL0]
    Given Product Group MAHP GHMO applies
    And MAHP GHMO Exception conditions DO NOT apply
    And UHG_States_RO == "VIRGINIA"
    When the NetworkRole Type of the Counterparty has been determined using the existing PCP Designation table
    Then the role type of the Coutnerparty is used for Contract NetworkRoleType

