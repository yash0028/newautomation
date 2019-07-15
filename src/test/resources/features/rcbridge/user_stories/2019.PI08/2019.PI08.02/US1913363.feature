# Last updated on 
@US1913363
@2019.PI08
@2019.PI08.02
@releasePresent
@iterationPresent
Feature: US1913363 - VIRGINIA Exception Provider (LAB RAD EXCEPTION tollgate 2) - Crosswalk upload/downlod

  @TC887161
  @Manual
  @Functional
  Scenario: TC887161 - [RL0]
    Given the application is ready and deployed to Openshift
    When we upload the GHMO tollgate-2 crosswalk file
    Then the file will be successfully stored in CLM system and present in history section

  @TC887163
  @Manual
  @Functional
  Scenario: TC887163 - [RL1]
    Given the application is ready and deployed to Openshift
    When we download the GHMO tollgate-2 crosswalk file
    Then the file will be successfully downloaded into our system

