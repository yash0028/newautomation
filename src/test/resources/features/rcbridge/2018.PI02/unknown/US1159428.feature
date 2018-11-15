# Last updated on 
@US1159428
@2018.PI02
@releasePast
@iterationUnknown
Feature: US1159428 - Jenkins Job for OpenShift Cleanup

  @TC564688
  @Automated
  @Functional
  Scenario: TC564688 - [RL1]
    Given that the job is running
    When there is an old failed pod
    Then the job will delete it within a 1 hour window

  @TC564687
  @Automated
  @Functional
  Scenario: TC564687 - [RL0]
    Given that the job is running
    When there is an old replication controller
    Then the job will delete it within a 1 hour window

