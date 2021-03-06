# Last updated on 
@US1476595
@2018.PI05
@2018.PI05.04
@releasePast
@iterationPast
Feature: US1476595 - Add Dynatrace Override to Base Image

  @TC672169
  @Manual
  @Functional
  Scenario: TC672169 - [RL0]
    Given a service is deployed to OpenShift,
    When I need to monitor the service in Dynatrace,
    Then I can add an environment variable to temporarily turn on Dynatrace monitoring

