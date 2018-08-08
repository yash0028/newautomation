# Last updated on 2018-08-07T20:46:30.715Z
@MVP
@Plus
@Priority_1
@Exari_Microservice
Feature: F159017 - Exari Microservice Establish Integration of CLM with MSPS Physician Fee Schedule - Optum

  @MSPS
  @Andrew_B
  @2018.PI03
  @2018.PI03.03
  Scenario: US1009534
    Given a contractor will need to be able to retrieve the MSPS fee schedule
    When at this step in the interview process to retrieve a fee schedule
    Then a fee schedule(s) are returned based on input criteria.

  @MSPS
  @2018.PI03
  @2018.PI03.02
  Scenario: US1231695::0
    #Happy PathWhen the Exari interview calls for the facility fee schedules with Physician "<feeScheduleNumber>"
    Then the microservice will return the requested fee schedules in a pdf file
    Examples:
      | feeScheduleNumber |
      | 20010000000 |
      | 20060080302 |
      | NEWENG_6238 |
      | VA_9518PR   |


  @MSPS
  @2018.PI03
  @2018.PI03.02
  Scenario: US1231695::1
    #Bad Path
    When the Exari interview calls for the facility fee schedules with Physician "<feeScheduleNumber>"
    Then the microservice will return a "404" error message
    Examples:
      | feeScheduleNumber |
      | XXXXX  |
      | ABCDE  |
      | 012345 |
      | AbC123 |


