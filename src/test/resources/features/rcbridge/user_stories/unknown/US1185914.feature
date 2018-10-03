# Last updated on 
@EXARI-11614
@Non-Deliverable
@7.5_Release
@MVP
@Plus
@CLM_Exari
@Parity
@US1185914
@MVP
@Parity
@Non-Deliverable
@7.5_Release
@F185542
Feature: US1185914 - View contract status summary

  @TC565961
  @Automated
  @Functional
  @EXARI-11614
  @Non-Deliverable
  @7.5_Release
  @MVP
  @Plus
  @CLM_Exari
  @Parity
  @US1185914
  Scenario: TC565961 - [RL0]
    Given I have access to an active Mass Action Project
    When I access the contract-level status
    Then I can view a listing of the contracts associated with the Mass Action Project
    And I can see their status as described above
    And I can "drill down" to a provider-level status

