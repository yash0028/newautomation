# Last updated on 
@MSPS
@US1261012
@2018.PI03
Feature: US1261012 - [Unfinished] Create External Data Query - Facility MSPS

  @TC564499
  @Automated
  @Functional
  Scenario: TC564499 - [RL0]
    When connecting to the MSPS service from Exari with a fee schedule number for a facility
    Then I receive the needed data in a zip file from the MSPS service.

