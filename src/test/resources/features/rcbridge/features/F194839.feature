# Last updated on 
@F194839
Feature: F194839 - CLM DevOps PI02

  @US1159428
  @2018.PI02
  Scenario: US1159428::0 - Jenkins Job for OpenShift Cleanup
    Given that the job is running
    When there is an old replication controller
    Then the job will delete it within a 1 hour window

  @US1159428
  @2018.PI02
  Scenario: US1159428::1 - Jenkins Job for OpenShift Cleanup
    Given that the job is running
    When there is an old failed pod
    Then the job will delete it within a 1 hour window

  @US1172701
  @2018.PI02
  Scenario: US1172701 - Stable Stage Environment for Exari Testing
    Given a user wants to test a CLM service,
    When the user hits the stage layer 7 proxy,
    Then they will get a consistent response.

