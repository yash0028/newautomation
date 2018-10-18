# Last updated on
@MVP
@CLM_Exari
@Parity
@Non-Deliverable
@EXARI-11545
@7.5_Release
@US1185895
@MVP
@Parity
@Non-Deliverable
@7.5_Release
@F185542
@releaseUnknown
@iterationUnknown
Feature: US1185895 - View project status summary

  @TC565926
  @Automated
  @Functional
  @MVP
  @CLM_Exari
  @Parity
  @Non-Deliverable
  @EXARI-11545
  @7.5_Release
  @US1185895
  Scenario: TC565926 - [RL0]
    Given I have access to an active Mass Action Project
    When I select to view the project status
    Then I can view the project details as described above
    And I can see the status as described above
    And I can "drill down" to a contract-level status

