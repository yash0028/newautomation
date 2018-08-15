# Last updated on 
@US1230156
@2018.PI03
Feature: US1230156 - Track UHC Follout - resolution/remediation process

  @Functional
  @TC518773
  @Manual
  @Functional
  Scenario: TC518773 - Validation of UHC fallout until resolution/remediation occurs
    Given a the Contract Status table is populated during the Migration process
    When it is completed
    Then I can identify all contracts that were in scope to be migrated, but fell out of the Migration process (either have a fallout status, or were identified to be migrated but were not due to error)

  @CLM_UAT
  @TC518928
  @Manual
  @Acceptance
  Scenario: TC518928 - Validation of accountability  of every contract Number and fallouts  of the contract numbers until appropriate remediation plan
    Given a the Contract Status table is populated during the Migration process
    When it is completed
    Then I can identify all contracts that were in scope to be migrated, but fell out of the Migration process (either have a fallout status, or were identified to be migrated but were not due to error)

