# Last updated on 
@Infrastructure
@US1084490
@2018.PI02
@2018.PI02.01
@10/1_Physician
@Parity
@releasePast
@iterationPast
Feature: US1084490 - Setup OpenShift Test environment

  @TC565883
  @Manual
  @Functional
  @Infrastructure
  Scenario: TC565883 - [RL0]
    # Setup Open Shift and have ability to connect to test environment
    Given the environment name of clm-test
    When checking the health of the clm-test environment
    Then an "ok" response is received

