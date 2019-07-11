# Last updated on 
@US1814221
@2019.PI08
@releasePresent
@iterationUnknown
Feature: US1814221 - Validate Attributes in UCM and JSON

  @TC882847
  @Manual
  @Functional
  Scenario: TC882847 - [RL0]
    Given a transaction is received from Exari
    When the transaction includes rate condition information
    Then the rate condition values align between the UCM and JSON
    And the rate condition values align between the JSON and OCM

