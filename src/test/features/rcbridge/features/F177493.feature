# Last updated on 2018-06-05T15:14:11.022Z
@Parity
Feature: F177493 - Create remaining non prod environment - Optum

  @Infrastructure
  @2018.PI02
  @2018.PI02.01
  Scenario: US1084490
    Given the environment name of clm-test
    When checking the health of the clm-test environment
    Then an "ok" response is received

