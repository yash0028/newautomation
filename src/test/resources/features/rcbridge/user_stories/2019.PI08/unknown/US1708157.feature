# Last updated on 
@US1708157
@2019.PI08
@releasePresent
@iterationUnknown
Feature: US1708157 - identify rate condition data details in UCM

  @TC831079
  @Manual
  @Functional
  Scenario: TC831079 - [RL0]
    Given a valid contract exists in Exari
    When rate conditions data has been identified in the contract UCM
    Then the rate condition details are available in the UCM

  @TC831083
  @Manual
  @Functional
  Scenario: TC831083 - [RL1]
    Given a valid contract exists in Exari
    When rate condition details are available in the UCM
    Then the rate condition details are stored in the OCM record
    ###

