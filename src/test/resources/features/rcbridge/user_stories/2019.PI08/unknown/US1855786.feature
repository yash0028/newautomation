# Last updated on 
@US1855786
@2019.PI08
@releaseFuture
@iterationUnknown
Feature: US1855786 - MAHP GHMO6 Product - Assign value of S (Specialist) for PCP IND field in NDB Payload for PCP-designated provider specialties

  @TC849867
  @Manual
  @Functional
  Scenario: TC849867 - [RL0]
    Given a valid OCM contract configuration record includes contract master for the ANB product
    And the ANB contract master includes NDB Product Code of AA
    And the ANB contract master includes NDB Market Number of 8444444
    And the ANB contract master includes NDB Market Number IPA Number of 800
    And the ANB contract master includes NDB Group Table Number of A051
    When ANB contract master details for a provider MPIN record are needed for NDB
    Then a value of 'S' is always assigned for the PCP IND field
    And the value of 'S' is also identified as pnc_prov_contr_role_cd
    ###

