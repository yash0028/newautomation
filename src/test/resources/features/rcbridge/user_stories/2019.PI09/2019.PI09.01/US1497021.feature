# Last updated on 
@Optum
@AM-Terminations
@Suman
@US1497021
@2019.PI09
@2019.PI09.01
@releasePresent
@iterationPresent
Feature: US1497021 - Integration - Create Unique Identifier for each Termination Process

  @TC710725
  @Manual
  @Functional
  @Optum
  @AM-Terminations
  @Suman
  Scenario: TC710725 - [RL0]
    Given the terminations process has started
    When the 2.1 Contracts Integration task is viewed
    Then a unique identifier is auto-populated into the Termination Event ID (term_event_id) field and it follows this standard format: TE-XXXXXX (TE-000001)

