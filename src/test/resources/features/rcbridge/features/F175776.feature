# Last updated on 
@MVP
@Plus
@Priority_1
@Exari_Microservice
@F175776
Feature: F175776 - Exari Microservice Establish Integration of CLM with Facility Fee Schedule - Optum

  @MSPS
  @US1261012
  @2018.PI03
  Scenario: US1261012 - [Unfinished] Create External Data Query - Facility MSPS
    When connecting to the MSPS service from Exari with a fee schedule number for a facility
    Then I receive the needed data in a zip file from the MSPS service.

  @US1234808
  @2018.PI03
  Scenario: US1234808 - Enhancement to Fee Schedule External Data Query
    Given a fee schedule is searched
    When the resource is streamed to Exari
    Then the end result is an encoded string on the Exari side

  @MSPS
  @US1165661
  @2018.PI03
  Scenario: US1165661 - [Continued] Create External Data Query - Facility MSPS
    When connecting to the MSPS service from Exari with a fee schedule number for a facility
    Then I receive the needed data in a zip file from the MSPS service.

  @MSPS
  @US1165644
  @2018.PI03
  Scenario Outline: US1165644 - Create Service Providing Facility FS  Access Via Microservice
    When the Exari interview calls for the facility fee schedules with Facility "<feeScheduleNumber>"
    Then the microservice will return the requested fee schedules in a zip file
    Examples:
      | feeScheduleNumber |
      | 9596 |
      | 9875 |
      | 2705 |

