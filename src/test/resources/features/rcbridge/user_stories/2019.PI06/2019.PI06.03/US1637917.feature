# Last updated on 
@US1637917
@2019.PI06
@2019.PI06.03
@releasePresent
@iterationPresent
Feature: US1637917 - New Resource on Fee Schedule API

  @TC747949
  @Manual
  @Functional
  Scenario: TC747949 - [RL0]
    Given I have a fee schedule number that contains a rate escalator (AZ 83000)
    When I call the fee-schedule-api new endpoint
    Then I receive a zip file which contains multiple PDFs

