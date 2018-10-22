# Last updated on 
@US1028152
@2018.PI02
@2018.PI02.02
@MVP
@PI02_Top3
@NDB
@Parity
@F185083
@releasePast
@iterationPast
Feature: US1028152 - NDB_Data Model Transformation for Update Roster business event

  @TC565938
  @Automated
  @Functional
  @US1028152
  @2018.PI02
  @2018.PI02.02
  Scenario: TC565938 - [RL0]
    Given NDB needs to subscribe to the domain Update Roster event
    When NDB subscribes to the event
    Then NDB successfully receives the event notificaiton

