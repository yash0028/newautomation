# Last updated on 
@CLM_UAT
@US1148671
@2018.PI02
Feature: US1148671 - [Unfinished] [Continued] Exari>NDB Contract Lockdown and Editing Physician and Facility

  @TC564815
  @Automated
  @Functional
  Scenario: TC564815 - [RL0]
    Given the contract was sent to NDB via the Exari payload process
    When a user attempts manual update or mass update from any other program asside Exari
    Then the contract will edit that the contract is NOT available for update

