# Last updated on 
@CLM_UAT
@US1150263
@2018.PI02
Feature: US1150263 - Create Exception Report showing Expired Base Agreements related to Executed/Active contracts

  @Functional
  @TC494261
  @Manual
  @Functional
  Scenario: TC494261 - Validation of Exception Report showing Expired Base Agreements related to Executed/Active contracts
    Given Exception Report is Generated
    When Base Agreement is Expired, and it has Related contracts that are Executed/Active, or the Related contracts are tied to other Related contracts that are Executed/Active
    Then those contracts should be Generated in the Report

