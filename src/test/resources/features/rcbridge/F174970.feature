# Last updated on 2018-06-14T13:42:15.290Z
@MVP
@PI02_Top3
@Parity
Feature: F174970 - Create Pre-Migration reporting process to account for all contracts by Pilot Market Number(s)

  @CLM_UAT
  @2018.PI02
  @2018.PI02.01
  Scenario: US1123626
    Given the Market Number(s) are provided for the next set of markets going live in the release
    When I run the Pre-Migration Market Number report
    Then I receive all contracts that reside in Emptoris for the given Market Number(s), with the columns populated as applicable

  @CLM_UAT
  @2018.PI02
  @2018.PI02.01
  Scenario: US1101219
    Given the Market Number(s) are provided for the next set of markets going live in the release
    When I run the Pre-Migration Market Number report
    Then I receive all contracts that reside in Emptoris for the given Market Number(s), with the columns populated as applicable

  @CLM_UAT
  @2018.PI02
  @2018.PI02.01
  Scenario: US1093136
    Given the Market Number(s) are provided for the next set of markets going live in the release
    When I run the Pre-Migration Base Driver report
    Then I receive all contracts that will be processed using the Base Agreement/Related Contract migration strategy, with the columns populated as applicable
