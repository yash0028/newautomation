# Last updated on 
@Mark_E.
@US1289622
@2018.PI03
@2018.PI03.04
@MVP
@releasePast
@iterationPast
Feature: US1289622 - Initialize events from contract transaction changes in Event Trigger

  @TC564479
  @Manual
  @Functional
  @Mark_E.
  Scenario: TC564479 - [RL0]
    Given An email is sent to the Optum Exari update email address
    When the event is sent to the Event Gateway
    Then the event has a transaction id corresponding to the contract update that initiated the email

