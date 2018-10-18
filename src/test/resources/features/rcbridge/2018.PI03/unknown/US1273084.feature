# Last updated on
@US1273084
@2018.PI03
@MVP
@F201505
@releasePast
@iterationUnknown
Feature: US1273084 - Fortify Scans

  @TC565518
  @Automated
  @Functional
  @US1273084
  @2018.PI03
  Scenario: TC565518 - [RL0]
    Given that code is pushed to master,
    When the code gets to the point in the pipeline for Fortify,
    Then the code is scanned by Fortify and results are uploaded to SCAR

