# Last updated on 
@US1956793
@2019.PI08.03
@releaseUnknown
@iterationPast
Feature: US1956793 - Zip To Market look up API

  @TC922984
  @Manual
  @Functional
  Scenario: TC922984 - [RL0]
    Given a valid contract includes the zip codes
    When Market number is needed for the OCM
    Then a service is available to lookup the market number
    And the service is based on the zip codes.

