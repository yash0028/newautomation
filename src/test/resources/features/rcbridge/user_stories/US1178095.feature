# Last updated on 
@US1178095
@2018.PI02
Feature: US1178095 - Exari>NDB Contract Lockdown and Editing Physician and Facility - Revert the changes

  @TC564625
  @Automated
  @Functional
  Scenario: TC564625 - [RL0]
    Given the contract was sent to NDB via the Exari payload process
    When a user attempts manual update or mass update from any other program aside Exari
    Then the contract will be editable for update

