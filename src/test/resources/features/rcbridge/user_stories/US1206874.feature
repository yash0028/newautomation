# Last updated on 
@US1206874
@2018.PI03
Feature: US1206874 - Pilot (Top 6 Market Numbers) - Ancillary

  @CLM_UAT
  @TC519188
  @Manual
  @Acceptance
  Scenario: TC519188 - Validation of Ancillary Active & Executed Records for Market Number 45592
    Given Pilot Market Numbers 45592 Ancillary contract meets the Ancillary Base Market migration criteria for Executed,contracts
    When I run the migration process
    Then I validate all steps as documented in the Deployment Activity Checklist

