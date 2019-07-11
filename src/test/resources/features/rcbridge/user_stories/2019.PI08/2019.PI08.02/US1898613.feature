# Last updated on 
@US1898613
@2019.PI08
@2019.PI08.02
@releasePresent
@iterationPresent
Feature: US1898613 - CMD Rules - MAHP GHMO - VIRGINIA Exception Provider MAHP GHMO tollgate 1

  @RC_unlinked
  @TC877724
  @Manual
  @Functional
  Scenario: TC877724 - [RL2]
    Given MAHP GHMO product group applies
    When MAHP GHMO Exception Provider conditions have been met
    Then the process continues to identify the Exception Details
    And the Exception details identified in Tollgate 2 tables

