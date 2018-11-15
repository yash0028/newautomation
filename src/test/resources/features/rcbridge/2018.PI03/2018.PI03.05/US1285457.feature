# Last updated on 
@US1285457
@2018.PI03
@2018.PI03.05
@MVP
@10/1_Physician
@Crosswalk
@Priority_1
@CMD
@releasePast
@iterationPast
Feature: US1285457 - Implement PROS fee schedule API

  @TC616512
  @Manual
  @Functional
  Scenario: TC616512 - [RL1]
    Given the fee-schedule api internal service is ready
    When we make a call to the service with invalid fee-schedule-id to get the fee-schedule information from PROS API
    Then exception should be thrown

  @TC616511
  @Manual
  @Functional
  Scenario: TC616511 - [RL0]
    Given the fee-schedule api internal service is ready
    When we make a call to the service to get the fee-schedule information from PROS API
    Then the fee-schedule information is received

