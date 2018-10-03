# Last updated on 
@CLM_UAT
@US1144455
@2018.PI02
@2018.PI02.02
@MVP
@PI02_Top3
@NDB
@Parity
@F185083
Feature: US1144455 - [Unfinished] NDB_Send Updates for Update Roster business event

  @TC564689
  @Automated
  @Functional
  @CLM_UAT
  @US1144455
  @2018.PI02
  @2018.PI02.02
  Scenario: TC564689 - [RL0]
    Given the NDB connector microservice has received a roster update event
    When all of the NDB edits are successful
    Then the NDB microservices are ready to update NDB

  @TC564690
  @Automated
  @Functional
  @CLM_UAT
  @US1144455
  @2018.PI02
  @2018.PI02.02
  Scenario: TC564690 - [RL1]
    Given the NDB connector microservice has received a roster update event
    When all of the NDB edits are not successful
    Then the NDB microservices creates an error message

  @TC564691
  @Automated
  @Functional
  @CLM_UAT
  @US1144455
  @2018.PI02
  @2018.PI02.02
  Scenario: TC564691 - [RL2]
    Given The event MS processed NDB edits sucessfully
    When NDB completes the update / action successfully
    Then NDB initiates an event outcome message to the transaction state service
    And a transaction state service call indicating successful processing was made

