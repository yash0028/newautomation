# Last updated on 
@US1855786
@2019.PI08
@releasePresent
@iterationUnknown
Feature: US1855786 - MAHP GHMO Product (777 IPA) - Assign value of S (Specialist) for PCP IND field in NDB Payload for PCP-designated provider specialties

  @TC849867
  @Manual
  @Functional
  Scenario: TC849867 - [RL0]
    Given a valid OCM contract configuration record includes MAHP GHMO6 product group
    And the contract master includes NDB Product Code of G0
    And the contract master includes NDB Market Number of 45592, 45593, 45594, 45595, 45596, 45597
    And the contract master includes NDB Con Arr of 6
    When the payload is made available to NDB
    And the roster providerClassification = P
    Then a value of 'S' is always assigned for the PCP IND field
    And the value of 'S' is also identified as pnc_prov_contr_role_cd
    ###

