# Last updated on 
@US1579133
@2019.PI06
@2019.PI06.02
@releasePresent
@iterationFuture
Feature: US1579133 - [Continued] Create an API on the CLM side to receive the facility contract load 2nd acknowledgement from NDB

  @TC727178
  @Manual
  @Functional
  Scenario: TC727178 - [RL0]
    Given NDB is ready to send the 2nd Acknowledgment of the facility contract
    When NDB calls the CLM API
    Then CLM receives the data, validates the data and sends back the return status message.

