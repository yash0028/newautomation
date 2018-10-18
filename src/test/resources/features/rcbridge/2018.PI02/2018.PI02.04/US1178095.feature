# Last updated on 
@US1178095
@2018.PI02
@2018.PI02.04
@MVP
@Plus
@F178659
@releasePast
@iterationPast
Feature: US1178095 - Exari>NDB Contract Lockdown and Editing Physician and Facility - Revert the changes

  @TC564625
  @Automated
  @Functional
  @US1178095
  @2018.PI02
  @2018.PI02.04
  Scenario: TC564625 - [RL0]
    Given the contract was sent to NDB via the Exari payload process
    When a user attempts manual update or mass update from any other program aside Exari
    Then the contract will be editable for update

