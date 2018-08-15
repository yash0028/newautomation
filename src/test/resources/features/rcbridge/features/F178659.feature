# Last updated on 
@MVP
@Plus
@F178659
Feature: F178659 - Exari>NDB  Contract Lock-down Physician and Facility - CF Team

  @CLM_UAT
  @US1065276
  @2018.PI02
  Scenario: US1065276 - [Continued] [Continued] Exari>NDB Contract Lockdown and Editing Physician and Facility
    Given the contract was sent to NDB via the Exari payload process
    When a user attempts manual update or mass update from any other program asside Exari
    Then the contract will edit that the contract is NOT available for update

  @US1178095
  @2018.PI02
  Scenario: US1178095 - Exari>NDB Contract Lockdown and Editing Physician and Facility - Revert the changes
    Given the contract was sent to NDB via the Exari payload process
    When a user attempts manual update or mass update from any other program aside Exari
    Then the contract will be editable for update

  @US1128069
  @2018.PI02
  Scenario: US1128069 - [Unfinished] Exari>NDB Contract Lockdown and Editing Physician and Facility
    Given the contract was sent to NDB via the Exari payload process
    When a user attempts manual update or mass update from any other program asside Exari
    Then the contract will edit that the contract is NOT available for update

  @CLM_UAT
  @US1148671
  @2018.PI02
  Scenario: US1148671 - [Unfinished] [Continued] Exari>NDB Contract Lockdown and Editing Physician and Facility
    Given the contract was sent to NDB via the Exari payload process
    When a user attempts manual update or mass update from any other program asside Exari
    Then the contract will edit that the contract is NOT available for update

