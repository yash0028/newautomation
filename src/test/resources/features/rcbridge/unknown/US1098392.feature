# Last updated on 
@MVP
@EXARI-11507
@CLM_Exari
@Parity
@Non-Deliverable
@7.5_Release
@US1098392
@MVP
@Parity
@Non-Deliverable
@7.5_Release
@releaseUnknown
@iterationUnknown
Feature: US1098392 - Define/derive project status

  @TC564790
  @Automated
  @Functional
  @MVP
  @EXARI-11507
  @CLM_Exari
  @Parity
  @Non-Deliverable
  @7.5_Release
  Scenario: TC564790 - [RL0]
    Given the User has identified target providers
    When a Mass Action Project is in progress
    Then Exari will logically derive status of the Project
    And project-level status will be reportable

