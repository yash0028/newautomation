# Last updated on 
@MSPS
@US1637917
@2019.PI06
@2019.PI06.04
@releasePresent
@iterationPast
Feature: US1637917 - New Resource on Fee Schedule API

  @TC747949
  @Automated
  @Functional
  @MSPS
  Scenario: TC747949 - [RL0] Validate new endpoint
    Given I have a fee schedule number that contains a rate escalator (AZ 83000)
    When I call the fee-schedule-api v2.0 professional fee schedule endpoint with "feeScheduleNumber" of "AZ 83000"
    Then the microservice will return the requested fee schedules in a zip file

