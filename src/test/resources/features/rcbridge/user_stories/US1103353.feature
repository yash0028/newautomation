# Last updated on 
@US1103353
@2018.PI03
Feature: US1103353 - [Continued] [Continued] [Continued] NDB_Send Updates for Update Roster business event

  @TC519296
  @Automated
  @Functional
  Scenario: TC519296 - Successful Roster Update
    Given the NDB connector microservice has received a roster update event
    When all of the NDB edits are successful
    Then the NDB microservices are ready to update NDB

  @TC525555
  @Automated
  @Functional
  Scenario: TC525555 - Creates error message
    Given the NDB connector microservice has received a roster update event
    When all of the NDB edits are not successful
    Then the NDB microservices creates an error message

  @TC525556
  @Automated
  @Functional
  Scenario: TC525556 - Event outcome message
    Given The event MS processed NDB edits successfully
    When NDB completes the update / action successfully
    Then NDB initiates an event outcome message to the transaction state service
    And a transaction state service call indicating successful processing was made

