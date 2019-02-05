# Last updated on 
@US1028152
@2018.PI02
@2018.PI02.02
@releasePast
@iterationPast
Feature: US1028152 - NDB_Data Model Transformation for Update Roster business event

  @TC701644
  @Manual
  @Functional
  Scenario: TC701644 - [RL0]
    Given NDB needs to subscribe to the domain Update Roster event
    When NDB subscribes to the event
    Then NDB successfully receives the event notificaiton

