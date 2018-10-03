# Last updated on 
@US1128069
@2018.PI02
@2018.PI02.01
@MVP
@Plus
@F178659
Feature: US1128069 - [Unfinished] Exari>NDB Contract Lockdown and Editing Physician and Facility

  @TC564590
  @Automated
  @Functional
  @US1128069
  @2018.PI02
  @2018.PI02.01
  Scenario: TC564590 - [RL0]
    Given the contract was sent to NDB via the Exari payload process
    When a user attempts manual update or mass update from any other program asside Exari
    Then the contract will edit that the contract is NOT available for update

