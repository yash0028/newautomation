# Last updated on 
@US1469397
@releaseUnknown
@iterationUnknown
Feature: US1469397 - Implement Stateless OpenShift Route Algorithm

  @TC666055
  @Manual
  @Functional
  Scenario: TC666055 - [RL0]
    Given I have a stateless service running with multiple pods,
    When multiple requests get sent at the same time,
    Then the requests are evenly distributed among the pods

