# Last updated on 
@EXARI-11614
@Non-Deliverable
@7.5_Release
@MVP
@Plus
@CLM_Exari
@Parity
@US1186351
@MVP
@Parity
@Non-Deliverable
@7.5_Release
@F185542
@releaseUnknown
@iterationUnknown
Feature: US1186351 - View provider status summary

  @TC564640
  @Automated
  @Functional
  @EXARI-11614
  @Non-Deliverable
  @7.5_Release
  @MVP
  @Plus
  @CLM_Exari
  @Parity
  @US1186351
  Scenario: TC564640 - [RL0]
    Given I have access to an active Mass Action Project
    When I access the provider-level status
    Then I can view a listing of the providers associated with the Mass Action Project
    And I can see their status as described above

