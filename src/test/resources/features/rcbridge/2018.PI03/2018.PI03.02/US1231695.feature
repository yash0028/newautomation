# Last updated on 
@MSPS
@US1231695
@2018.PI03
@2018.PI03.02
@releasePast
@iterationPast
Feature: US1231695 - Create Service Providing Physician FS  Access Via Microservice

  @TC536761
  @Automated
  @Regression
  @MSPS
  Scenario Outline: TC536761 - [RL0] Happy Path MSPS Physician Verification
    #Happy Path
    When the Exari interview calls for the facility fee schedules with Physician "<feeScheduleNumber>"
    Then the microservice will return the requested fee schedules in a pdf file
    Examples:
      | feeScheduleNumber |
      | 20010000000       |
      | 20060080302       |
      | NEWENG_6238       |
      | VA_9518PR         |

  @TC536762
  @Automated
  @Regression
  @MSPS
  Scenario Outline: TC536762 - [RL1] Bad Path MSPS Physician Validation
    #Bad Path
    When the Exari interview calls for the facility fee schedules with Physician "<feeScheduleNumber>"
    Then the microservice will return a "404" error message
    Examples:
      | feeScheduleNumber |
      | XXXXX             |
      | ABCDE             |
      | 012345            |
      | AbC123            |

