# Last updated on 
@US1178363
@2018.PI02
@2018.PI02.05
@PI02_Top3
@AUTO-PES
@PES
@Exari_Microservice
@MVP
@CLM_Exari
@Parity
@releasePast
@iterationPast
Feature: US1178363 - Error and Exception Handling framework

  @TC564482
  @Manual
  @Functional
  Scenario: TC564482 - [RL0]
    When a user calls the service and service is unable to fulfill the request
    Then it must respond back with appropriate error code
    And client must show the error details with sufficient information to guide them in order to take an action to resolve the error situation

