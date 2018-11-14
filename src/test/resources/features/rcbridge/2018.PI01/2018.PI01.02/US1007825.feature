# Last updated on 
@Transaction_Mgmt
@US1007825
@2018.PI01
@2018.PI01.02
@MVP
@releasePast
@iterationPast
Feature: US1007825 - (Retry) Build retry service

  @TC564818
  @Manual
  @Functional
  @Transaction_Mgmt
  Scenario: TC564818 - [RL0]
    Given that a service call fails to a downstream system
    When we need to retry the call in an hour
    Then the retry service will have the ability to store which service, topic, and offset failed
    And will be able to send information needed for a retry to the failed service
    And do so every hour until successful

