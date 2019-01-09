# Last updated on 
@MSPS
@US1165644
@2018.PI03
@2018.PI03.01
@MVP
@Plus
@Priority_1
@Exari_Microservice
@releasePast
@iterationPast
Feature: US1165644 - Create Service Providing Facility FS  Access Via Microservice

  @TC519085
  @Automated
  @Regression
  @MSPS
  Scenario Outline: TC519085 - [RL0] Create Service Providing Facility FS Access Via Microservice
    When the Exari interview calls for the facility fee schedules with Facility "<feeScheduleNumber>"
    Then the microservice will return the requested fee schedules in a zip file
    Examples:
      | feeScheduleNumber |
      | 12321             |
      | FACAZCOP          |
      | 0806              |

