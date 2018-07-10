# Last updated on 2018-07-09T21:25:13.975Z
@MVP
@Plus
@PI03
@Priority_1
@Parity
Feature: F205509 - Contracts API

  Scenario: US1207967
    Given there exists valid contract data
    When the service receives the contract data
    Then the validation succeeds
    And event gateway is called to initiate a new transaction for the event
    And the transaction id returned from the event gateway API is returned to the caller

  Scenario: US1207949
    Given Exari has a contract it wishes to install
    When Exari calls the Contracts API to install a new contract
    Then the Contracts API will call the Event Gateway API to initiate a new transaction

  Scenario: US1207936
    Given there is an event containing an event type and a payload
    When an event is published to the event gateway API
    Then The event gateway API will initiate a transaction
    And will publish a new event to the Kafka message broker containing the event type, the payload, and the transaction id
    And the transaction id is returned

