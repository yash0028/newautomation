# Last updated on 
@MSPS
@US1165661
@2018.PI03
@2018.PI03.03
@MVP
@Plus
@Priority_1
@Exari_Microservice
@releasePast
@iterationPast
Feature: US1165661 - [Continued] Create External Data Query - Facility MSPS

  @TC536781
  @Manual
  @Acceptance
  @MSPS
  Scenario: TC536781 - [RL0] External Data Query Validation
    When connecting to the MSPS service from Exari with a fee schedule number for a facility
    Then I receive the needed data in a zip file from the MSPS service.

