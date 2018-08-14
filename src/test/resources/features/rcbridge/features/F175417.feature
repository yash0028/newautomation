# Last updated on 
@MVP
@PI02_Top3
@Plus
@Parity
@F175417
Feature: F175417 - Distributed transaction mechanism (Part 2)

  @US1094080
  @2018.PI02
  Scenario: US1094080::0 - Transaction State Microservice - Transaction Configuration
    Given A business event is submitted
    When A transaction is initialized
    Then A new transaction id is generated
    And The completion criteria is looked up from the configuration and included in the event data
    And The go/no go criteria is looked up from the configuration and included in the event data
    And A transaction initialization message is published to the transaction log topic

  @US1094080
  @2018.PI02
  Scenario: US1094080::1 - Transaction State Microservice - Transaction Configuration
    Given A business event is submitted
    When A transaction is initialized and the configuration lookup fails
    Then The REST api returns an internal server error
    And An error is logged to the logfile

  @US1094080
  @2018.PI02
  Scenario: US1094080::2 - Transaction State Microservice - Transaction Configuration
    Given A transaction is in progress
    When A transaction state change is submitted
    Then A transaction state change message is published to the transaction log topic

  @US1094080
  @2018.PI02
  Scenario: US1094080::3 - Transaction State Microservice - Transaction Configuration
    Given A transaction is in progress
    When A transaction state change is submitted with an invalid transaction id
    Then The REST api returns a not found error
    And An error is logged to the logfile

  @US1094080
  @2018.PI02
  Scenario: US1094080::4 - Transaction State Microservice - Transaction Configuration
    Given A transaction is in progress
    When A transaction state change is submitted and the transaction state message cannot be published to Kafka
    Then The REST api returns an internal server error
    And An error is logged to the logfile

  @US1100621
  @2018.PI02
  Scenario: US1100621 - Error Handling Message Spike
    Given the need exists for approach to handling errors
    When the team analysis business and technical needs
    Then an approach document for handling error messages and status is created

  @CLM_UAT
  @US1095937
  @2018.PI02
  Scenario: US1095937::0 - Approval Coordinator Microservice
    Given A transaction is in progress
    When The business data is received
    And All Domain microservices send a successful result
    Then The result is checked for errors
    And The data is sent to the downstream updaters

  @CLM_UAT
  @US1095937
  @2018.PI02
  Scenario: US1095937::1 - Approval Coordinator Microservice
    Given A transaction is in progress
    When The business data is received
    And One or more domain services send an error
    Then The transaction is aborted with an error sent to the transaction log

  @CLM_UAT
  @US1095937
  @2018.PI02
  Scenario: US1095937::2 - Approval Coordinator Microservice
    Given A transaction is in progress
    When The business data is received
    And One or more domain services does not acknowledge the business event
    Then The transaction is aborted with a time-out error sent to the transaction log

  @CLM_UAT
  @US1194528
  @2018.PI02
  Scenario: US1194528::0 - [Unfinished] [Continued] Benchmarking & Acceptance Testing
    Given the transaction state micro service is created,
    When I send a payload to the micro service,
    Then I will see the latency of the response,
    And I will see how the consumer micro service performs.

  @CLM_UAT
  @US1194528
  @2018.PI02
  Scenario: US1194528::1 - [Unfinished] [Continued] Benchmarking & Acceptance Testing
    Given the transaction coordinator micro service is created,
    When I send a payload to the micro service,
    Then I will see the latency of the response,
    And I will see how the consumer micro service performs.

  @CLM_UAT
  @US1194528
  @2018.PI02
  Scenario: US1194528::2 - [Unfinished] [Continued] Benchmarking & Acceptance Testing
    Given the approval coordinator micro service is created,
    When I send a payload to the micro service,
    Then I will see the latency of the response,
    And I will see how the consumer micro service performs.

  @US1094296
  @2018.PI02
  Scenario: US1094296 - Kafka Testing Utility Spike
    Given A test case is created
    Then Demonstrate that the utility can generate the correct sequence of Kafka events

  @US1077963
  @2018.PI02
  Scenario: US1077963::0 - Transaction Status Update and Connect Database
    Given A transaction is in progress
    When a transaction status event is received
    Then Write the updates to the database

  @US1077963
  @2018.PI02
  Scenario: US1077963::1 - Transaction Status Update and Connect Database
    Given A transaction is in progress
    When a transaction status event is received
    And The transaction data is corrupted
    Then Write a message to an error log

  @US1077963
  @2018.PI02
  Scenario: US1077963::2 - Transaction Status Update and Connect Database
    Given A transaction is in progress
    When a transaction status event is received but the database is unavailable
    Then Write a message to an error log

  @CLM_UAT
  @US1077918
  @2018.PI02
  Scenario: US1077918::0 - Transaction State Microservice
    Given A business event is submitted
    When A transaction is initialized
    Then A new transaction id is generated
    And A transaction initialization message is published to the transaction log topic

  @CLM_UAT
  @US1077918
  @2018.PI02
  Scenario: US1077918::1 - Transaction State Microservice
    Given A transaction is in progress
    When A transaction state change is submitted
    Then A transaction state change message is published to the transaction log topic

  @CLM_UAT
  @US1077918
  @2018.PI02
  Scenario: US1077918::2 - Transaction State Microservice
    Given A transaction is in progress
    When A transaction state change is submitted with an invalid transaction id
    Then The REST api returns a not found error
    And An error is logged to the logfile

  @CLM_UAT
  @US1077918
  @2018.PI02
  Scenario: US1077918::3 - Transaction State Microservice
    Given A transaction is in progress
    When A transaction state change is submitted and the transaction state message cannot be published to Kafka
    Then The REST api returns an internal server error
    And An error is logged to the logfile
    # An interface specification is defined for the service API

  @#MVP
  @US1100247
  @2018.PI02
  Scenario: US1100247::0 - Domain service stub
    Given an event processes an update request event
    When the scenario simulates an update is ok
    Then a returned event transaction state

  @#MVP
  @US1100247
  @2018.PI02
  Scenario: US1100247::1 - Domain service stub
    Given an event processes an update request event
    When the scenario simulates an update has aborted
    Then a returned event transaction state

  @CLM_UAT
  @US1172942
  @2018.PI02
  Scenario: US1172942::0 - [Unfinished] Benchmarking & Acceptance Testing
    Given the transaction state micro service is created,
    When I send a payload to the micro service,
    Then I will see the latency of the response,
    And I will see how the consumer micro service performs.

  @CLM_UAT
  @US1172942
  @2018.PI02
  Scenario: US1172942::1 - [Unfinished] Benchmarking & Acceptance Testing
    Given the transaction coordinator micro service is created,
    When I send a payload to the micro service,
    Then I will see the latency of the response,
    And I will see how the consumer micro service performs.

  @CLM_UAT
  @US1172942
  @2018.PI02
  Scenario: US1172942::2 - [Unfinished] Benchmarking & Acceptance Testing
    Given the approval coordinator micro service is created,
    When I send a payload to the micro service,
    Then I will see the latency of the response,
    And I will see how the consumer micro service performs.

  @CLM_UAT
  @US1100194
  @2018.PI02
  Scenario: US1100194::0 - Downstream NBD updater service stub
    Given an event processes an update request event
    When the scenario simulates an update is successful
    Then a returned event transaction state

  @CLM_UAT
  @US1100194
  @2018.PI02
  Scenario: US1100194::1 - Downstream NBD updater service stub
    Given an event processes an update request event
    When the scenario simulates an update has failed
    Then a returned event transaction state

  @US1077928
  @2018.PI02
  Scenario: US1077928::0 - Transaction Status Microservice
    Given No transaction is open
    When The status is queried
    And A given transaction id is not found
    Then A not found error is returned

  @US1077928
  @2018.PI02
  Scenario: US1077928::1 - Transaction Status Microservice
    Given Transaction is open
    When The status is queried
    And A given transaction id is found
    Then Then transaction status is returned

  @US1077928
  @2018.PI02
  Scenario: US1077928::2 - Transaction Status Microservice
    Given Transaction is open
    When The status is queried
    And A database is not available
    Then An error message is returned

  @US1100684
  @2018.PI02
  Scenario: US1100684::0 - Event Subscription and Publication Library Refinement
    Given the need to publish or subscribe to events
    Then there is documentation available to understand how to use the library

  @US1100684
  @2018.PI02
  Scenario: US1100684::1 - Event Subscription and Publication Library Refinement
    Given the need to subscribe to events
    Then there is a library available that standardizes how to subscribe

  @US1100684
  @2018.PI02
  Scenario: US1100684::2 - Event Subscription and Publication Library Refinement
    Given the need to publish events
    Then there is a library available that standardizes how to publish

  @US1055907
  @2018.PI02
  Scenario: US1055907::0 - Kafka Consumer Library Test Cases
    Given a message is produced
    When the processing fails
    Then the processing is retried

  @US1055907
  @2018.PI02
  Scenario: US1055907::1 - Kafka Consumer Library Test Cases
    Given a message is retried
    When the retry attempts exhaust limit threshold is met
    Then the event is dead-lettered for manual operations

  @CLM_UAT
  @US1095885
  @2018.PI02
  Scenario: US1095885::0 - Contract Gateway API
    Given A business transaction
    When Transaction is received from Exari
    Then A new transaction is created
    And The business is submitted to the business event topic

  @CLM_UAT
  @US1095885
  @2018.PI02
  Scenario: US1095885::1 - Contract Gateway API
    Given A business transaction
    When Transaction is received from Exari but the transaction state service is down
    Then An error is returned

  @CLM_UAT
  @US1095885
  @2018.PI02
  Scenario: US1095885::2 - Contract Gateway API
    Given A business transaction
    When Transaction is received from Exari but Kafka is down
    Then An error is return
    Given A business transaction
    When Transaction is received from Exari but the api gateway service is down
    Then An error is returned

  @CLM_UAT
  @US1095885
  @2018.PI02
  Scenario: US1095885::3 - Contract Gateway API
    # An API Interface is needed for the rest API

