# Last updated on 2018-07-17T19:30:55.832Z
@MVP
@Plus
@Priority_1
@Exari_Microservice
Feature: F175776 - Exari Microservice Establish Integration of CLM with Facility Fee Schedule - Optum

  @2018.PI03
  @2018.PI03.02
  Scenario: US1165661
    When connecting to the MSPS service from Exari with a fee schedule number for a facility
    Then I receive the needed data in a zip file from the MSPS service.

