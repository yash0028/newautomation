# Last updated on 
@Optum
@AM-Terminations
@US1497021
@2019.PI06
@releasePresent
@iterationUnknown
Feature: US1497021 - Integration - Create Unique Identifier for each Termination Process

  @TC710725
  @Manual
  @Functional
  @Optum
  @AM-Terminations
  Scenario: TC710725 - [RL0]
    Given a contractor has completed the "Capture Contract IDs" task
    When that workflow has moved from the "Capture Contract IDs" task to the "Initiate Termination Process" task
    Then a unique identifier is auto-populated into the Termination Event ID (term_event_id) field and it follows this standard format: TE-XXXXXX

