# Last updated on 2018-05-07T09:16:30.230Z
@MVP
@PI02_Top3
Feature: F174970 - Create Pre-Migration reporting process to account for all contracts by Pilot Market Number(s)

  @2018.PI02
  @2018.PI02.01
  Scenario: US1101219
    Given the Market Number(s) are provided for the next set of markets going live in the release
    When I run the Pre-Migration Market Number report
    Then I receive all contracts that reside in Emptoris for the given Market Number(s), with the columns populated as applicable

  @2018.PI02
  @2018.PI02.01
  Scenario: US1093136
    Given the Market Number(s) are provided for the next set of markets going live in the release
    When I run the Pre-Migration Base Driver report
    Then I receive all contracts that will be processed using the Base Agreement/Related Contract migration strategy, with the columns populated as applicable

