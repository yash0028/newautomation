# Last updated on 2018-07-13T14:02:12.112Z
@MVP
@Plus
@Priority_1
@Exari_Microservice
Feature: F175776 - Exari Microservice Establish Integration of CLM with Facility Fee Schedule - Optum

  @MSPS
  @2018.PI03
  @2018.PI03.01
  Scenario: US1165644
    When the Exari interview calls for the facility fee schedules
    Then the micro service will return the requested fee schedules.

