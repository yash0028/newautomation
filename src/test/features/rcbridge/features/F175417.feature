# Last updated on 2018-06-20T19:38:43.350Z
@MVP
@PI02_Top3
@Plus
@Parity
Feature: F175417 - Distributed transaction mechanism (Part 2)

  @2018.PI02
  @2018.PI02.02
  Scenario: US1094080::0
    Given A business event is submitted
    When A transaction is initialized
    Then A new transaction id is generated
    And The completion criteria is looked up from the configuration and included in the event data
    And The go/no go criteria is looked up from the configuration and included in the event data
    And A transaction initialization message is published to the transaction log topic

  @2018.PI02
  @2018.PI02.02
  Scenario: US1094080::1
    Given A business event is submitted
    When A transaction is initialized and the configuration lookup fails
    Then The REST api returns an internal server error
    And An error is logged to the logfile

  @2018.PI02
  @2018.PI02.02
  Scenario: US1094080::2
    Given A transaction is in progress
    When A transaction state change is submitted
    Then A transaction state change message is published to the transaction log topic

  @2018.PI02
  @2018.PI02.02
  Scenario: US1094080::3
    Given A transaction is in progress
    When A transaction state change is submitted with an invalid transaction id
    Then The REST api returns a not found error
    And An error is logged to the logfile

  @2018.PI02
  @2018.PI02.02
  Scenario: US1094080::4
    Given A transaction is in progress
    When A transaction state change is submitted and the transaction state message cannot be published to Kafka
    Then The REST api returns an internal server error
    And An error is logged to the logfile

  @2018.PI02
  @2018.PI02.01
  Scenario: US1100621
    Given the need exists for approach to handling errors
    When the team analysis business and technical needs
    Then an approach document for handling error messages and status is created

  @CLM_UAT
  @2018.PI02
  @2018.PI02.01
  Scenario: US1095937::0
    Given A transaction is in progress
    When The business data is received
    And All Domain microservices send a successful result
    Then The result is checked for errors
    And The data is sent to the downstream updaters

  @CLM_UAT
  @2018.PI02
  @2018.PI02.01
  Scenario: US1095937::1
    Given A transaction is in progress
    When The business data is received
    And One or more domain services send an error
    Then The transaction is aborted with an error sent to the transaction log

  @CLM_UAT
  @2018.PI02
  @2018.PI02.01
  Scenario: US1095937::2
    Given A transaction is in progress
    When The business data is received
    And One or more domain services does not acknowledge the business event
    Then The transaction is aborted with a time-out error sent to the transaction log

  @2018.PI02
  @2018.PI02.01
  Scenario: US1094296
    Given A test case is created
    Then Demonstrate that the utility can generate the correct sequence of Kafka events

  @2018.PI02
  @2018.PI02.03
  Scenario: US1077963::0
    Given A transaction is in progress
    When a transaction status event is received
    Then Write the updates to the database

  @2018.PI02
  @2018.PI02.03
  Scenario: US1077963::1
    Given A transaction is in progress
    When a transaction status event is received
    And The transaction data is corrupted
    Then Write a message to an error log

  @2018.PI02
  @2018.PI02.03
  Scenario: US1077963::2
    Given A transaction is in progress
    When a transaction status event is received but the database is unavailable
    Then Write a message to an error log

  @CLM_UAT
  @2018.PI02
  @2018.PI02.01
  Scenario: US1077918::0
    Given A business event is submitted
    When A transaction is initialized
    Then A new transaction id is generated
    And A transaction initialization message is published to the transaction log topic

  @CLM_UAT
  @2018.PI02
  @2018.PI02.01
  Scenario: US1077918::1
    Given A transaction is in progress
    When A transaction state change is submitted
    Then A transaction state change message is published to the transaction log topic

  @CLM_UAT
  @2018.PI02
  @2018.PI02.01
  Scenario: US1077918::2
    Given A transaction is in progress
    When A transaction state change is submitted with an invalid transaction id
    Then The REST api returns a not found error
    And An error is logged to the logfile

  @CLM_UAT
  @2018.PI02
  @2018.PI02.01
  Scenario: US1077918::3
    Given A transaction is in progress
    When A transaction state change is submitted and the transaction state message cannot be published to Kafka
    Then The REST api returns an internal server error
    And An error is logged to the logfile
    # An interface specification is defined for the service API

  @CLM_UAT
  @2018.PI02
  @2018.PI02.04
  Scenario: US1128296::0
    Given the transaction state micro service is created,
    When I send a payload to the micro service,
    Then I will see the latency of the response,
    And I will see how the consumer micro service performs.

  @CLM_UAT
  @2018.PI02
  @2018.PI02.04
  Scenario: US1128296::1
    Given the transaction coordinator micro service is created,
    When I send a payload to the micro service,
    Then I will see the latency of the response,
    And I will see how the consumer micro service performs.

  @CLM_UAT
  @2018.PI02
  @2018.PI02.04
  Scenario: US1128296::2
    Given the approval coordinator micro service is created,
    When I send a payload to the micro service,
    Then I will see the latency of the response,
    And I will see how the consumer micro service performs.

  @#MVP
  @2018.PI02
  @2018.PI02.01
  Scenario: US1100247::0
    Given an event processes an update request event
    When the scenario simulates an update is ok
    Then a returned event transaction state

  @#MVP
  @2018.PI02
  @2018.PI02.01
  Scenario: US1100247::1
    Given an event processes an update request event
    When the scenario simulates an update has aborted
    Then a returned event transaction state

  @CLM_UAT
  @2018.PI02
  @2018.PI02.03
  Scenario: US1172942::0
    Given the transaction state micro service is created,
    When I send a payload to the micro service,
    Then I will see the latency of the response,
    And I will see how the consumer micro service performs.

  @CLM_UAT
  @2018.PI02
  @2018.PI02.03
  Scenario: US1172942::1
    Given the transaction coordinator micro service is created,
    When I send a payload to the micro service,
    Then I will see the latency of the response,
    And I will see how the consumer micro service performs.

  @CLM_UAT
  @2018.PI02
  @2018.PI02.03
  Scenario: US1172942::2
    Given the approval coordinator micro service is created,
    When I send a payload to the micro service,
    Then I will see the latency of the response,
    And I will see how the consumer micro service performs.

  @CLM_UAT
  @2018.PI02
  @2018.PI02.01
  Scenario: US1100194::0
    Given an event processes an update request event
    When the scenario simulates an update is successful
    Then a returned event transaction state

  @CLM_UAT
  @2018.PI02
  @2018.PI02.01
  Scenario: US1100194::1
    Given an event processes an update request event
    When the scenario simulates an update has failed
    Then a returned event transaction state

  @2018.PI02
  @2018.PI02.03
  Scenario: US1077928::0
    Given No transaction is open
    When The status is queried
    And A given transaction id is not found
    Then A not found error is returned

  @2018.PI02
  @2018.PI02.03
  Scenario: US1077928::1
    Given Transaction is open
    When The status is queried
    And A given transaction id is found
    Then Then transaction status is returned

  @2018.PI02
  @2018.PI02.03
  Scenario: US1077928::2
    Given Transaction is open
    When The status is queried
    And A database is not available
    Then An error message is returned

  @2018.PI02
  @2018.PI02.01
  Scenario: US1100684::0
    Given the need to publish or subscribe to events
    Then there is documentation available to understand how to use the library

  @2018.PI02
  @2018.PI02.01
  Scenario: US1100684::1
    Given the need to subscribe to events
    Then there is a library available that standardizes how to subscribe

  @2018.PI02
  @2018.PI02.01
  Scenario: US1100684::2
    Given the need to publish events
    Then there is a library available that standardizes how to publish

  @2018.PI02
  @2018.PI02.03
  Scenario: US1055907::0
    Given a message is produced
    When the processing fails
    Then the processing is retried

  @2018.PI02
  @2018.PI02.03
  Scenario: US1055907::1
    Given a message is retried
    When the retry attempts exhaust limit threshold is met
    Then the event is dead-lettered for manual operations

