# Last updated on 
@MSPS
@US1231695
@2018.PI03
Feature: US1231695 - Create Service Providing Physician FS  Access Via Microservice

  @TC536761
  @Automated
  @Acceptance
  Scenario Outline: TC536761 - Happy Path MSPS Physician Verification
    When the Exari interview calls for the facility fee schedules with Physician "<feeScheduleNumber>"
    Then the microservice will return the requested fee schedules in a zip file
    Examples:
      | feeScheduleNumber |
      | 9596 |
      | 13500 |
      | 1034 |
      | AEX |

