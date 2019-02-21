# Last updated on 
@US1596181
@2019.PI06
@2019.PI06.01
@releasePresent
@iterationPast
Feature: US1596181 - [Unfinished] Create an API on the CLM side to receive the facility contract load 2nd acknowledgement from NDB

  @TC729713
  @Manual
  @Functional
  Scenario: TC729713 - [RL0]
    Given NDB is ready to send the 2nd Acknowledgment of the facility contract
    When NDB calls the CLM API
    Then CLM receives the data, validates the data and sends back the return status message.

