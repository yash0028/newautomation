# Last updated on 
@US1261628
@2018.PI03
Feature: US1261628 - [Continued] Track UHC Fallout - resolution/remediation process

  @TC548696
  @Manual
  @Functional
  Scenario: TC548696 - Validation of UHC Follout - resolution/remediation process
    Given a the Contract Status table is populated during the Migration process
    When it is completed
    Then I can identify all contracts that were in scope to be migrated, but fell out of the Migration process (either have a fallout status, or were identified to be migrated but were not due to error)

  @CLM_UAT
  @TC558024
  @Manual
  @Acceptance
  Scenario: TC558024 - Validation of UHC Follout - resolution/remediation process
    Given a the Contract Status table is populated during the Migration process
    When it is completed
    Then I can identify all contracts that were in scope to be migrated, but fell out of the Migration process (either have a fallout status, or were identified to be migrated but were not due to error)

