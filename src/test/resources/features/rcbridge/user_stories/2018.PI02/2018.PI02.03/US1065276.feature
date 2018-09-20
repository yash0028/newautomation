# Last updated on 
@CLM_UAT
@US1065276
@2018.PI02
@2018.PI02.03
Feature: US1065276 - [Continued] [Continued] Exari>NDB Contract Lockdown and Editing Physician and Facility

  @TC565564
  @Automated
  @Functional
  Scenario: TC565564 - [RL0]
    Given the contract was sent to NDB via the Exari payload process
    When a user attempts manual update or mass update from any other program asside Exari
    Then the contract will edit that the contract is NOT available for update

