# Last updated on 2018-07-03T11:04:32.028Z
@MVP
@PI02_Top3
@Parity
Feature: F185083 - Downstream MS - NDB Roster Update business event_UNET COSMOS Products (Part 2)

  @#MVP
  @Parity
  @2018.PI02
  @2018.PI02.04
  Scenario: US1169275
    Given an Exari contract includes a COSMOS product priced via Common Pricing Solution (CPS)
    When a contract business event triggers in Exari
    Then the contract integration process accurately reflects the needed information to support CPS

  @2018.PI02
  @2018.PI02.03
  Scenario: US1145653
    Given the need to know contact payload data elementsThen an data payload document is created/updated

  @2018.PI02
  @2018.PI02.04
  Scenario: US1194530::0
    Given the NDB connector microservice has received a roster update event
    When all of the NDB edits are successful
    Then the NDB microservices are ready to update NDB

  @2018.PI02
  @2018.PI02.04
  Scenario: US1194530::1
    Given the NDB connector microservice has received a roster update event
    When all of the NDB edits are not successful
    Then the NDB microservices creates an error message

  @2018.PI02
  @2018.PI02.04
  Scenario: US1194530::2
    Given The event MS processed NDB edits sucessfully
    When NDB completes the update / action successfully
    Then NDB initiates an event outcome message to the transaction state service
    And a transaction state service call indicating successful processing was made

  @2018.PI02
  @2018.PI02.02
  Scenario: US1028152
    Given NDB needs to subscribe to the domain Update Roster event
    When NDB subscribes to the event
    Then NDB successfully receives the event notificaiton

  @#MVP
  @2018.PI02
  @2018.PI02.05
  Scenario: US1103097
    Given the need to support multiple event transactions within a Update Roster event at the Domain Service level
    When creating the services needed to support each event
    Then a standardized schema exists and is applied

  @2018.PI02
  @2018.PI02.02
  Scenario: US1103371
    Given the need exists for approach to process NDB specific edits
    When the team analysis business and technical needsThen an approach document for applying edits and handling error messages and status is created

  @2018.PI02
  @2018.PI02.05
  Scenario: US1030143
    Given The Physician contract is complete and correct within Exari
    When The contract is included in the Exari Physician Contract ETL to NDB at the product level
    Then NDB should load the contract to the 'E' PNC contract screen successfully within NDB

  @2018.PI02
  @2018.PI02.04
  Scenario: US1170508
    Given the need to know contact payload data elementsThen an data payload document is created/updated

  @2018.PI02
  @2018.PI02.05
  Scenario: US1103353::0
    Given the NDB connector microservice has received a roster update event
    When all of the NDB edits are successful
    Then the NDB microservices are ready to update NDB

  @2018.PI02
  @2018.PI02.05
  Scenario: US1103353::1
    Given the NDB connector microservice has received a roster update event
    When all of the NDB edits are not successful
    Then the NDB microservices creates an error message

  @2018.PI02
  @2018.PI02.05
  Scenario: US1103353::2
    Given The event MS processed NDB edits successfully
    When NDB completes the update / action successfully
    Then NDB initiates an event outcome message to the transaction state service
    And a transaction state service call indicating successful processing was made

  @CLM_UAT
  @2018.PI02
  @2018.PI02.03
  Scenario: US1172975::0
    Given the NDB connector microservice has received a roster update event
    When all of the NDB edits are successful
    Then the NDB microservices are ready to update NDB

  @CLM_UAT
  @2018.PI02
  @2018.PI02.03
  Scenario: US1172975::1
    Given the NDB connector microservice has received a roster update event
    When all of the NDB edits are not successful
    Then the NDB microservices creates an error message

  @CLM_UAT
  @2018.PI02
  @2018.PI02.03
  Scenario: US1172975::2
    Given The event MS processed NDB edits sucessfully
    When NDB completes the update / action successfully
    Then NDB initiates an event outcome message to the transaction state service
    And a transaction state service call indicating successful processing was made

  @2018.PI02
  @2018.PI02.05
  Scenario: US1179408::0
    Given the NDB connector microservice has received a roster update event
    When all of the NDB edits are successful
    Then the NDB microservices are ready to update NDB

  @2018.PI02
  @2018.PI02.05
  Scenario: US1179408::1
    Given the NDB connector microservice has received a roster update event
    When all of the NDB edits are not successful
    Then the NDB microservices creates an error message

  @2018.PI02
  @2018.PI02.05
  Scenario: US1179408::2
    Given The event MS processed NDB edits sucessfully
    When NDB completes the update / action successfully
    Then NDB initiates an event outcome message to the transaction state service
    And a transaction state service call indicating successful processing was made

  @2018.PI02
  @2018.PI02.02
  Scenario: US1105361
    Given the need to know contact payload data elementsThen an data payload document is created/updated

  @#MVP
  @2018.PI02
  @2018.PI02.04
  Scenario: US1194515
    Given the need to support multiple event transactions within a Update Roster event at the Domain Service level
    When creating the services needed to support each event
    Then a standardized schema exists and is applied

  @2018.PI02
  @2018.PI02.04
  Scenario: US1194512
    Given The Physician contract is complete and correct within Exari
    When The contract is included in the Exari Physician Contract ETL to NDB at the product level
    Then NDB should load the contract to the 'E' PNC contract screen successfully within NDB

  @2018.PI02
  @2018.PI02.04
  Scenario: US1194521::0
    Given the NDB connector microservice has received a roster update event
    When all of the NDB edits are successful
    Then the NDB microservices are ready to update NDB

  @2018.PI02
  @2018.PI02.04
  Scenario: US1194521::1
    Given the NDB connector microservice has received a roster update event
    When all of the NDB edits are not successful
    Then the NDB microservices creates an error message

  @2018.PI02
  @2018.PI02.04
  Scenario: US1194521::2
    Given The event MS processed NDB edits successfully
    When NDB completes the update / action successfully
    Then NDB initiates an event outcome message to the transaction state service
    And a transaction state service call indicating successful processing was made

  @CLM_UAT
  @2018.PI02
  @2018.PI02.02
  Scenario: US1144455::0
    Given the NDB connector microservice has received a roster update event
    When all of the NDB edits are successful
    Then the NDB microservices are ready to update NDB

  @CLM_UAT
  @2018.PI02
  @2018.PI02.02
  Scenario: US1144455::1
    Given the NDB connector microservice has received a roster update event
    When all of the NDB edits are not successful
    Then the NDB microservices creates an error message

  @CLM_UAT
  @2018.PI02
  @2018.PI02.02
  Scenario: US1144455::2
    Given The event MS processed NDB edits sucessfully
    When NDB completes the update / action successfully
    Then NDB initiates an event outcome message to the transaction state service
    And a transaction state service call indicating successful processing was made

