# Last updated on 
@US1159428
@2018.PI02
@releaseUnknown
@iterationUnknown
Feature: US1159428 - Jenkins Job for OpenShift Cleanup

  @TC701674
  @Manual
  @Functional
  Scenario: TC701674 - [RL0]
    Given that the job is running
    When there is an old replication controller
    Then the job will delete it within a 1 hour window

  @TC701710
  @Manual
  @Functional
  Scenario: TC701710 - [RL1]
    Given that the job is running
    When there is an old failed pod
    Then the job will delete it within a 1 hour window

