# Last updated on 
@MSPS
@US1165661
@2018.PI03
Feature: US1165661 - [Continued] Create External Data Query - Facility MSPS

  @TC536781
  @Manual
  @Acceptance
  Scenario: TC536781 - External Data Query Validation
    When connecting to the MSPS service from Exari with a fee schedule number for a facility
    Then I receive the needed data in a zip file from the MSPS service.

  @TC564913
  @Automated
  @Functional
  Scenario: TC564913 - [RL0]
    When connecting to the MSPS service from Exari with a fee schedule number for a facility
    Then I receive the needed data in a zip file from the MSPS service.

