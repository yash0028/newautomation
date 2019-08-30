# Last updated on 
@#MVP
@US1924706
@2019.PI08
@2019.PI08.05
@releasePresent
@iterationPresent
Feature: US1924706 - MAHP GHMO - Determine IPA for SPEC Contracts VIRGINIA (010)

  @TC902687
  @Manual
  @Functional
  @#MVP
  Scenario: TC902687 - [RL0]
    Given Product Group MAHP GHMO applies
    And MAHP GHMO Exception conditions DO NOT apply
    And Contract.NetworkRoleType == SPEC
    When primary Service Location market number = 45592<>45597
    Then ipaNbr = 010
    #And ConArr == 0

