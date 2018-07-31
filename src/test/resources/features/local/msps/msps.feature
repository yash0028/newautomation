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
      | 13500             |
#      | 1034              |
#      | AEX               |