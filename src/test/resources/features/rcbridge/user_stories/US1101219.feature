# Last updated on 
@CLM_UAT
@US1101219
@2018.PI02
Feature: US1101219 - Create a Pre-Migration Market Number report to identify all contracts for given Market Number(s)

  @CLM_UAT
  @TC505928
  @Manual
  @Acceptance
  Scenario: TC505928 - Validate  all contracts of  given Market Number for Created   Pre-Migration Market Number report
    Given the Market Number(s) are provided for the next set of markets going live in the release
    When I run the Pre-Migration Market Number report
    Then I receive all contracts that reside in Emptoris for the given Market Number(s), with the columns populated as applicable

