# Last updated on 2018-07-09T13:14:52.374Z
@Parity
Feature: F177493 - Create remaining non prod environment - Optum

  @Infrastructure
  @2018.PI02
  @2018.PI02.01
  Scenario: US1084490
    # Setup Open Shift and have ability to connect to test environment
    Given the environment name of clm-test
    When checking the health of the clm-test environment
    Then an "ok" response is received

