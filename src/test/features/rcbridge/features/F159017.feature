# Last updated on 2018-07-09T14:34:45.031Z
@MVP
@Plus
@Priority_1
@Exari_Microservice
Feature: F159017 - Exari Microservice Establish Integration of CLM with MSPS - Optum

  @2018.PI03
  @2018.PI03.02
  Scenario: US1009534
    Given a contractor will need to be able to retrieve the MSPS fee schedule
    When at this step in the interview process to retrieve a fee schedule
    Then a fee schedule(s) are returned based on input criteria.

  @CLM_UAT
  @MSPS
  @2018.PI03
  @2018.PI03.01
  Scenario: US1009530
    Given during the interview process when the MSPS fee schedule is requested
    When the user inputs certain parameters (From Padma's Excel Doc)
    Then the microservice will return the correct values.

