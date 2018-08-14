# Last updated on 
@10/1_Physician
@Parity
@F177493
Feature: F177493 - Create remaining non prod environment - Optum

  @Infrastructure
  @US1084490
  @2018.PI02
  Scenario: US1084490 - Setup OpenShift Test environment
    # Setup Open Shift and have ability to connect to test environment
    Given the environment name of clm-test
    When checking the health of the clm-test environment
    Then an "ok" response is received

