# Last updated on 
@CLM_UAT
@US1172975
@2018.PI02
Feature: US1172975 - [Unfinished] [Continued] NDB_Send Updates for Update Roster business event

  @TC564456
  @Automated
  @Functional
  Scenario: TC564456 - [RL2]
    Given The event MS processed NDB edits sucessfully
    When NDB completes the update / action successfully
    Then NDB initiates an event outcome message to the transaction state service
    And a transaction state service call indicating successful processing was made

  @TC564455
  @Automated
  @Functional
  Scenario: TC564455 - [RL1]
    Given the NDB connector microservice has received a roster update event
    When all of the NDB edits are not successful
    Then the NDB microservices creates an error message

  @TC564454
  @Automated
  @Functional
  Scenario: TC564454 - [RL0]
    Given the NDB connector microservice has received a roster update event
    When all of the NDB edits are successful
    Then the NDB microservices are ready to update NDB

