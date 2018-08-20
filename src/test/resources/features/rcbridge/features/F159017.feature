# Last updated on 
@MVP
@Plus
@Priority_1
@Exari_Microservice
@F159017
Feature: F159017 - Exari Microservice Establish Integration of CLM with MSPS Physician Fee Schedule - Optum

  @MSPS
  @Andrew_B
  @US1009534
  @2018.PI03
  Scenario: US1009534 - Create External Data Query - MSPS Physician
    Given a contractor will need to be able to retrieve the MSPS fee schedule
    When at this step in the interview process in Exari to retrieve a fee schedule
    Then a fee schedule(s) are returned based on input criteria.

  @MSPS
  @US1231695
  @2018.PI03
  Scenario Outline: US1231695::0 - Create Service Providing Physician FS  Access Via Microservice
    #Happy Path
    When the Exari interview calls for the facility fee schedules with Physician "<feeScheduleNumber>"
    Then the microservice will return the requested fee schedules in a pdf file
    Examples:
      | feeScheduleNumber |
      | 20010000000 |
      | 20060080302 |
      | NEWENG_6238 |
      | VA_9518PR |

  @MSPS
  @US1231695
  @2018.PI03
  Scenario Outline: US1231695::1 - Create Service Providing Physician FS  Access Via Microservice
    #Bad Path
    When the Exari interview calls for the facility fee schedules with Physician "<feeScheduleNumber>"
    Then the microservice will return a "404" error message
    Examples:
      | feeScheduleNumber |
      | XXXXX |
      | ABCDE |
      | 012345 |
      | AbC123 |

