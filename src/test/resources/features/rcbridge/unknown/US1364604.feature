# Last updated on 
@US1364604
@F232975
@releaseUnknown
@iterationUnknown
Feature: US1364604 - OCP Environment for Stage

  @TC599672
  @Manual
  @Functional
  @US1364604
  Scenario: TC599672 - [RL0]
    Given a developer pushes code on the pipeline,
    When the approve to stage button is pressed,
    Then the service will successfully deploy on the new OCP Stage environment

