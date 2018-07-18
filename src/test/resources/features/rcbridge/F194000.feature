# Last updated on 2018-07-12T16:24:39.818Z
@MVP
@Plus
Feature: F194000 - Integration of CLM with Physician Fee Schedule MSPS - PROS

  @2018.PI03
  @2018.PI03.03
  Scenario: US1214569
    Given a contractor will need to be able to retrieve the MSPS fee schedule
    When at this step in the interview process to retrieve a fee schedule
    Then a fee schedule(s) are returned based on input criteria.

  @CLM_UAT
  @MSPS
  @2018.PI03
  @2018.PI03.02
  Scenario: US1214571
    Given during the interview process when the MSPS fee schedule is requested
    When the user inputs certain parameters (From Padma's Excel Doc)
    Then the microservice will return the correct values.

