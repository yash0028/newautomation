# Last updated on 2018-08-07T20:31:06.177Z
@MVP
@Plus
@Priority_1
@Exari_Microservice
Feature: F175776 - Exari Microservice Establish Integration of CLM with Facility Fee Schedule - Optum

  @MSPS
  @2018.PI03
  @2018.PI03.02
  Scenario: US1261012
    When connecting to the MSPS service from Exari with a fee schedule number for a facility
    Then I receive the needed data in a zip file from the MSPS service.

  @MSPS
  @2018.PI03
  @2018.PI03.03
  Scenario: US1165661
    When connecting to the MSPS service from Exari with a fee schedule number for a facility
    Then I receive the needed data in a zip file from the MSPS service.

  @MSPS
  @2018.PI03
  @2018.PI03.01
  Scenario: US1165644
    When the Exari interview calls for the facility fee schedules with Facility "<feeScheduleNumber>"
    Then the microservice will return the requested fee schedules in a zip file
    Examples:
      | feeScheduleNumber |
      | 9596 |
      | 9875 |
      | 2705 |


