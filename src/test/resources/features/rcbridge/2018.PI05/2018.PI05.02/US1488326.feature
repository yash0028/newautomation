# Last updated on 
@US1488326
@2018.PI05
@2018.PI05.02
@MVP
@Maintenance
@releasePresent
@iterationPresent
Feature: US1488326 - Fee Schedule API format validation to account for "/"

  @TC677416
  @Manual
  @Functional
  Scenario: TC677416 - [RL0]
    Given a valid contract record exists
    When the fee schedule property contains a format that contains "\" or "/"
    Then the "\" or "/" and all data following is ignored
    ###

