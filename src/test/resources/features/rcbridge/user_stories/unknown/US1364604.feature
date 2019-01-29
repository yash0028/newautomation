# Last updated on 
@US1364604
@N/A
@releaseUnknown
@iterationUnknown
Feature: US1364604 - OCP Environment for Stage

  @TC599672
  @Manual
  @Functional
  Scenario: TC599672 - [RL0]
    Given a developer pushes code on the pipeline,
    When the approve to stage button is pressed,
    Then the service will successfully deploy on the new OCP Stage environment

