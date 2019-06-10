# Last updated on 
@Integration
@US1055310
@2018.PI01
@2018.PI01.04
@releaseUnknown
@iterationUnknown
Feature: US1055310 - Implement Docker push to Optum Docker Hub

  @TC564768
  @Manual
  @Functional
  @Integration
  Scenario: TC564768 - [RL0]
    Given spring based Jenkins file already has all the steps required in our pipeline
    Then a developer will configure the docker plugin to enable pushing docker images to Optum's docker hub.

