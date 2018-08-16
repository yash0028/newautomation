# Last updated on 
@MVP
@PI02_Top3
@Parity
@F185083
Feature: F185083 - Downstream MS - NDB Roster Update business event_UNET COSMOS Products (Part 2)

  @CLM_UAT
  @US1172975
  @2018.PI02
  Scenario: US1172975::0 - [Unfinished] [Continued] NDB_Send Updates for Update Roster business event
    Given the NDB connector microservice has received a roster update event
    When all of the NDB edits are successful
    Then the NDB microservices are ready to update NDB

  @CLM_UAT
  @US1172975
  @2018.PI02
  Scenario: US1172975::1 - [Unfinished] [Continued] NDB_Send Updates for Update Roster business event
    Given the NDB connector microservice has received a roster update event
    When all of the NDB edits are not successful
    Then the NDB microservices creates an error message

  @CLM_UAT
  @US1172975
  @2018.PI02
  Scenario: US1172975::2 - [Unfinished] [Continued] NDB_Send Updates for Update Roster business event
    Given The event MS processed NDB edits sucessfully
    When NDB completes the update / action successfully
    Then NDB initiates an event outcome message to the transaction state service
    And a transaction state service call indicating successful processing was made

  @#MVP
  @Parity
  @US1169275
  @2018.PI02
  Scenario: US1169275 - NDB Common Pricing Solution Payload analysis SPIKE
    Given an Exari contract includes a COSMOS product priced via Common Pricing Solution (CPS)
    When a contract business event triggers in Exari
    Then the contract integration process accurately reflects the needed information to support CPS

  @US1194531
  @2018.PI02
  Scenario: US1194531::0 - [Unfinished] Exari event producer [contracts-gateway-api]
    Given A business transaction
    When Transaction is received from Exari
    Then A new transaction is created
    And The business is submitted to the business event topic

  @US1194531
  @2018.PI02
  Scenario: US1194531::1 - [Unfinished] Exari event producer [contracts-gateway-api]
    Given A business transaction
    When Transaction is received from Exari but the transaction state service is down
    Then An error is returned

  @US1179408
  @2018.PI02
  Scenario: US1179408::0 - [Continued] Cosmos Integration
    Given the NDB connector microservice has received a roster update event
    When all of the NDB edits are successful
    Then the NDB microservices are ready to update NDB

  @US1179408
  @2018.PI02
  Scenario: US1179408::1 - [Continued] Cosmos Integration
    Given the NDB connector microservice has received a roster update event
    When all of the NDB edits are not successful
    Then the NDB microservices creates an error message

  @US1179408
  @2018.PI02
  Scenario: US1179408::2 - [Continued] Cosmos Integration
    Given The event MS processed NDB edits sucessfully
    When NDB completes the update / action successfully
    Then NDB initiates an event outcome message to the transaction state service
    And a transaction state service call indicating successful processing was made

  @#MVP
  @US1194515
  @2018.PI02
  Scenario: US1194515 - [Unfinished] Domain MS - Create event schema design for Roster Update
    Given the need to support multiple event transactions within a Update Roster event at the Domain Service level
    When creating the services needed to support each event
    Then a standardized schema exists and is applied

  @US1194512
  @2018.PI02
  Scenario: US1194512 - [Unfinished] Add a Contract Master to an Existing Physician on an Existing Contract
    Given The Physician contract is complete and correct within Exari
    When The contract is included in the Exari Physician Contract ETL to NDB at the product level
    Then NDB should load the contract to the 'E' PNC contract screen successfully within NDB

  @US1194530
  @2018.PI02
  Scenario: US1194530::0 - [Unfinished] Cosmos Integration
    Given the NDB connector microservice has received a roster update event
    When all of the NDB edits are successful
    Then the NDB microservices are ready to update NDB

  @US1194530
  @2018.PI02
  Scenario: US1194530::1 - [Unfinished] Cosmos Integration
    Given the NDB connector microservice has received a roster update event
    When all of the NDB edits are not successful
    Then the NDB microservices creates an error message

  @US1194530
  @2018.PI02
  Scenario: US1194530::2 - [Unfinished] Cosmos Integration
    Given The event MS processed NDB edits sucessfully
    When NDB completes the update / action successfully
    Then NDB initiates an event outcome message to the transaction state service
    And a transaction state service call indicating successful processing was made

  @US1028152
  @2018.PI02
  Scenario: US1028152 - NDB_Data Model Transformation for Update Roster business event
    Given NDB needs to subscribe to the domain Update Roster event
    When NDB subscribes to the event
    Then NDB successfully receives the event notificaiton

  @US1194521
  @2018.PI02
  Scenario: US1194521::0 - [Unfinished] [Continued] [Continued] NDB_Send Updates for Update Roster business event
    Given the NDB connector microservice has received a roster update event
    When all of the NDB edits are successful
    Then the NDB microservices are ready to update NDB

  @US1194521
  @2018.PI02
  Scenario: US1194521::1 - [Unfinished] [Continued] [Continued] NDB_Send Updates for Update Roster business event
    Given the NDB connector microservice has received a roster update event
    When all of the NDB edits are not successful
    Then the NDB microservices creates an error message

  @US1194521
  @2018.PI02
  Scenario: US1194521::2 - [Unfinished] [Continued] [Continued] NDB_Send Updates for Update Roster business event
    Given The event MS processed NDB edits successfully
    When NDB completes the update / action successfully
    Then NDB initiates an event outcome message to the transaction state service
    And a transaction state service call indicating successful processing was made

  @CLM_UAT
  @US1144455
  @2018.PI02
  Scenario: US1144455::0 - [Unfinished] NDB_Send Updates for Update Roster business event
    Given the NDB connector microservice has received a roster update event
    When all of the NDB edits are successful
    Then the NDB microservices are ready to update NDB

  @CLM_UAT
  @US1144455
  @2018.PI02
  Scenario: US1144455::1 - [Unfinished] NDB_Send Updates for Update Roster business event
    Given the NDB connector microservice has received a roster update event
    When all of the NDB edits are not successful
    Then the NDB microservices creates an error message

  @CLM_UAT
  @US1144455
  @2018.PI02
  Scenario: US1144455::2 - [Unfinished] NDB_Send Updates for Update Roster business event
    Given The event MS processed NDB edits sucessfully
    When NDB completes the update / action successfully
    Then NDB initiates an event outcome message to the transaction state service
    And a transaction state service call indicating successful processing was made

  @US1179417
  @2018.PI02
  Scenario: US1179417::0 - [Continued] Exari event producer [contracts-gateway-api]
    Given A business transaction
    When Transaction is received from Exari
    Then A new transaction is created
    And The business is submitted to the business event topic

  @US1179417
  @2018.PI02
  Scenario: US1179417::1 - [Continued] Exari event producer [contracts-gateway-api]
    Given A business transaction
    When Transaction is received from Exari but the transaction state service is down
    Then An error is returned

  @US1030143
  @2018.PI02
  Scenario: US1030143 - [Continued] Add a Contract Master to an Existing Physician on an Existing Contract
    Given The Physician contract is complete and correct within Exari
    When The contract is included in the Exari Physician Contract ETL to NDB at the product level
    Then NDB should load the contract to the 'E' PNC contract screen successfully within NDB

