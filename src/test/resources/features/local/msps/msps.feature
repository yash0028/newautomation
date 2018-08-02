Feature: F175776 - Exari Microservice Establish Integration of CLM with Facility Fee Schedule - Optum

  @2018.PI03
  @2018.PI03.01
  @MSPS
  Scenario Outline: US1165661:1
    When the Exari interview calls for the facility fee schedules with Facility "<feeScheduleNumber>"
    Then the microservice will return the requested fee schedules in a zip file

    Examples:
      | feeScheduleNumber |
      | 9596              |
      | 9875              |
      | 2705              |

  @2018.PI03
  @2018.PI03.02
  @MSPS
  Scenario Outline: US1231695:1
    When the Exari interview calls for the facility fee schedules with Physician "<feeScheduleNumber>"
    Then the microservice will return the requested fee schedules in a pdf file

    Examples:
      | feeScheduleNumber |
      | 20010000000       |
      | 20060080302       |
      | NEWENG_6238       |
      | VA_9518PR         |

  @2018.PI03
  @2018.PI03.02
  @MSPS
  Scenario Outline: US1231695:2
    When the Exari interview calls for the facility fee schedules with Physician "<feeScheduleNumber>"
    Then the microservice will return a "404" error message

    Examples:
      | feeScheduleNumber |
      | XXXXX             |
      | ABCDE             |
      | 012345            |
      | AbC123            |