# Last updated on 
@US1855786
@2019.PI08
@2019.PI08.04
@releasePresent
@iterationPresent
Feature: US1855786 - MAHP GHMO Product (777 IPA) - Assign value of S (Specialist) for PCP IND field in NDB Payload for PCP-designated provider specialties

  @TC849867
  @Manual
  @Functional
  Scenario: TC849867 - [RL0]
    Given a valid OCM contract configuration record includes MAHP GHMO product group
    And the contract master includes NDB Product Code == G0
    And the contract master includes NDB Market Number <> 45592, 45593, 45594, 45595, 45596, 45597
    And the contract master includes NDB IPA Number == 777
    And the contract master includes NDB Con Arr ==0
    Then a value of 'S' is always assigned for the PCP IND field
    And the value of 'S' is also identified as pnc_prov_contr_role_cd
    ###

