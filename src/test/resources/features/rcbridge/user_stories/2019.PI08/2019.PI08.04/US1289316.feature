# Last updated on 
@CMD2
@A_UI_Story
@US1289316
@2019.PI08
@2019.PI08.04
@releasePast
@iterationPast
Feature: US1289316 - View OCM Contract Config and Provider contract record details via CMD UI

  @TC616509
  @Manual
  @Functional
  @CMD2
  @A_UI_Story
  Scenario: TC616509 - [RL0]
    Given an contract configuration OCM record exists
    When details are needed from the OCM
    Then a service is available to retrieve the OCM contract configuration details
    And the details are viewable via the CMD UI

  @TC616510
  @Manual
  @Functional
  @CMD2
  @A_UI_Story
  Scenario: TC616510 - [RL1]
    Given a service is available to retrieve provider details from the OCM
    When the provider record details are returned
    Then the details are viewable via the CMD web UI

  @TC743423
  @Manual
  @Functional
  @CMD2
  @A_UI_Story
  Scenario: TC743423 - [RL2]
    Given an contract configuration OCM record does not exist
    When details are requested from the OCM
    Then a service is not made available
    And an error message returned "Unable to locate OCM Record"

