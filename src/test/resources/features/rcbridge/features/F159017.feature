# Last updated on 2018-08-02T19:18:27.239Z
@MVP
@Plus
@Priority_1
@Exari_Microservice
Feature: F159017 - Exari Microservice Establish Integration of CLM with MSPS Physician Fee Schedule - Optum

  @2018.PI03
  @2018.PI03.04
  Scenario: US1009534
    Given a contractor will need to be able to retrieve the MSPS fee schedule
    When at this step in the interview process to retrieve a fee schedule
    Then a fee schedule(s) are returned based on input criteria.

