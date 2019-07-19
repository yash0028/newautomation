# Last updated on 
@US1913362
@2019.PI08
@2019.PI08.02
@releasePresent
@iterationPresent
Feature: US1913362 - VIRGINIA Exception Provider MAHP GHMO tollgate 1 - Crosswalk upload/downlod

  @TC887162
  @Manual
  @Functional
  Scenario: TC887162 - [RL0]
    Given the application is ready and deployed to Openshift
    When we upload the GHMO tollgate-1 crosswalk file
    Then the file will be successfully stored in CLM system and present in history section

  @TC887164
  @Manual
  @Functional
  Scenario: TC887164 - [RL1]
    Given the application is ready and deployed to Openshift
    When we download the GHMO tollgate-1 crosswalk file
    Then the file will be successfully downloaded into our system

