# Last updated on 
@US1273084
@2018.PI03
@releaseUnknown
@iterationUnknown
Feature: US1273084 - Fortify Scans

  @TC701673
  @Manual
  @Functional
  Scenario: TC701673 - [RL0]
    Given that code is pushed to master,
    When the code gets to the point in the pipeline for Fortify,
    Then the code is scanned by Fortify and results are uploaded to SCAR

