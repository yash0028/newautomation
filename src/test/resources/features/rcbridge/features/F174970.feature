# Last updated on 
@MVP
@PI02_Top3
@Parity
@F174970
Feature: F174970 - Create Pre-Migration reporting process to account for all contracts by Pilot Market Number(s)

  @CLM_UAT
  @US1123626
  @2018.PI02
  Scenario: US1123626 - Addition of Execution date column for Pre-Migration Market Number report
    Given the Market Number(s) are provided for the next set of markets going live in the release
    When I run the Pre-Migration Market Number report
    Then I receive all contracts that reside in Emptoris for the given Market Number(s), with the columns populated as applicable

  @CLM_UAT
  @US1101219
  @2018.PI02
  Scenario: US1101219 - Create a Pre-Migration Market Number report to identify all contracts for given Market Number(s)
    Given the Market Number(s) are provided for the next set of markets going live in the release
    When I run the Pre-Migration Market Number report
    Then I receive all contracts that reside in Emptoris for the given Market Number(s), with the columns populated as applicable

  @CLM_UAT
  @US1093136
  @2018.PI02
  Scenario: US1093136 - Create a Pre-Migration Base Driver report to show contract migration logic of what will be migrated
    Given the Market Number(s) are provided for the next set of markets going live in the release
    When I run the Pre-Migration Base Driver report
    Then I receive all contracts that will be processed using the Base Agreement/Related Contract migration strategy, with the columns populated as applicable

