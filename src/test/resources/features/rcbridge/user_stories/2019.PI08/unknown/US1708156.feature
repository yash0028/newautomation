# Last updated on 
@US1708156
@2019.PI08
@releaseUnknown
@iterationUnknown
Feature: US1708156 - Identify contracts with rate conditions

  @TC831081
  @Manual
  @Functional
  Scenario: TC831081 - [RL0]
    Given a valid contract exists in Exari UCM
    When the contract includes rate conditions
    Then the rate condition details are available in the UCM

  @TC831082
  @Manual
  @Functional
  Scenario: TC831082 - [RL1]
    Given a valid contract exists in Exari
    When the contract includes rate conditions
    Then the rate condition details are stored as part of the OCM record
    ###

