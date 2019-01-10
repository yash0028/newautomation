# Last updated on 
@US1521564
@2018.PI05
@2018.PI05.05
@MVP
@Plus
@Priority_2
@Facility
@releasePresent
@iterationFuture
Feature: US1521564 - CLM >COSMOS Add a Facility Contract - to existing contract - PIC DIV - PSH (Unit Test

  @TC694733
  @Manual
  @Functional
  Scenario: TC694733 - [RL0]
    Given the Exari > COSMOS Facility data within the Payload is correct
    When COSMOS receives the Exari Facility Payload data to add to an existing contract
    Then a successful COSMOS Facility Panel should load to the PIC DIV to be worked by COSMOS and added to the existing Panels for the given Facility

