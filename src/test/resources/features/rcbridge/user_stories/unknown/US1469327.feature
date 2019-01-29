# Last updated on 
@US1469327
@N/A
@releaseUnknown
@iterationUnknown
Feature: US1469327 - Autoscale OpenShift Environment Job

  @TC666056
  @Manual
  @Functional
  Scenario: TC666056 - [RL0]
    Given we have an OpenShift project,
    When usage is above or below 75% allocation (up to the max of 64gbs or 16cores),
    Then the autoscale job will increase or decrease allocated resources accordingly

