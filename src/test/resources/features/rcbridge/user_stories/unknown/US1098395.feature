# Last updated on 
@MVP
@EXARI-11548
@CLM_Exari
@Parity
@Non-Deliverable
@7.5_Release
@US1098395
@MVP
@Parity
@Non-Deliverable
@7.5_Release
@F185542
@releaseUnknown
@iterationUnknown
Feature: US1098395 - Save in Progress Projects

  @TC565301
  @Automated
  @Functional
  @MVP
  @EXARI-11548
  @CLM_Exari
  @Parity
  @Non-Deliverable
  @7.5_Release
  @US1098395
  Scenario: TC565301 - [RL0]
    Given a User has initiated a Mass Actions Project
    When the Project requirements cannot be completed within a single work session
    Then the User will be able to Save the in-progress project
    And the in-progress project will be listed on the User's Activity Manager queue
    And the in-progress project can be restarted from the User's queue

