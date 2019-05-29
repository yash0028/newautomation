# Last updated on 
@US1708158
@2019.PI08
@releaseFuture
@iterationUnknown
Feature: US1708158 - Process and store rate condition details in OCM

  @TC831080
  @Manual
  @Functional
  Scenario: TC831080 - [RL0]
    Given a valid contract exists in Exari
    When the UCM contract record includes rate condition details
    Then the rate condition details are stored in the OCM
    And the OCM data is available to authorized users/processes

  @TC831084
  @Manual
  @Functional
  Scenario: TC831084 - [RL1]
    Given a valid contract exists in Exari
    When the UCM contract record does not include rate condition details
    Then rate condition details are not stored in the OCM
    ###

