# Last updated on 2018-05-30T18:41:37.852Z
@MVP
@PI02_Top3
@Parity
Feature: F185083 - Downstream MS - NDB Roster Update business event_UNET COSMOS Products (Part 2)

  @2018.PI02
  @2018.PI02.03
  Scenario: US1103353::0
    Given the NDB connector microservice has received a roster update event
    When all of the NDB edits are successful
    Then the NDB microservices are ready to update NDB

  @2018.PI02
  @2018.PI02.03
  Scenario: US1103353::1
    Given the NDB connector microservice has received a roster update event
    When all of the NDB edits are not successful
    Then the NDB microservices creates an error message

  @2018.PI02
  @2018.PI02.03
  Scenario: US1103353::2
    Given The event MS processed NDB edits sucessfully
    When NDB completes the update / action successfully
    Then NDB initiates an event outcome message to the transaction state service
    Then And a transaction state service call indicating successful processing was made

  @2018.PI02
  @2018.PI02.02
  Scenario: US1028152
    Given NDB needs to subscribe to the domain Update Roster event
    When NDB subscribes to the event
    Then NDB successfully receives the event notificaiton

  @2018.PI02
  @2018.PI02.02
  Scenario: US1144455::0
    Given the NDB connector microservice has received a roster update event
    When all of the NDB edits are successful
    Then the NDB microservices are ready to update NDB

  @2018.PI02
  @2018.PI02.02
  Scenario: US1144455::1
    Given the NDB connector microservice has received a roster update event
    When all of the NDB edits are not successful
    Then the NDB microservices creates an error message

  @2018.PI02
  @2018.PI02.02
  Scenario: US1144455::2
    Given The event MS processed NDB edits sucessfully
    When NDB completes the update / action successfully
    Then NDB initiates an event outcome message to the transaction state service
    Then And a transaction state service call indicating successful processing was made

  @2018.PI02
  @2018.PI02.02
  Scenario: US1103371
    Given the need exists for approach to process NDB specific edits
    When the team analysis business and technical needsThen an approach document for applying edits and handling error messages and status is created

  @2018.PI02
  @2018.PI02.03
  Scenario: US1145653
    Given the need to know contact payload data elementsThen an data payload document is created/updated

  @2018.PI02
  @2018.PI02.02
  Scenario: US1105361
    Given the need to know contact payload data elementsThen an data payload document is created/updated

  @2018.PI02
  Scenario: US1030143
    Given The Physician contract is complete and correct within Exari
    When The contract is included in the Exari Physician Contract ETL to NDB at the product level
    Then NDB should load the contract to the 'E' PNC contract screen successfully within NDB

