# Last updated on 
@US1898487
@2019.PI09
@2019.PI09.01
@releasePresent
@iterationPresent
Feature: US1898487 - [SPIKE] CMD Data Source Integration - Market Platform Matrix for sourcing Commercial Product identifiers

  @TC954874
  @Manual
  @Functional
  Scenario: TC954874 - [RL0]
    Given data exists in the Market Platform Matrix
    When data from the Market Platform Matrix is needed
    And the data needed is used for purposes supporting OCM or CMD processes
    Then a technical specification document is available
    And the document includes data mapping to CMD
    And the document includes data mapping to OCM
    ###

