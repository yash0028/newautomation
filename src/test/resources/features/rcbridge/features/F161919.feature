# Last updated on 
@MVP
@F161919
Feature: F161919 - Manage Distributed Transactions - user can review

  @US1058710
  @2018.PI01
  Scenario: US1058710 - [Spike] Research Splunk for Dashboard Solution
    Given the CLM project will use a dashboarding tool to visualize and report metrics
    Then the development team will investigate Splunk since it is Optum's approved tool for dashboarding.

  @Transaction_Mgmt
  @US980176
  @2018.PI01
  Scenario: US980176 - (TxMgr) Create Transaction Management Service
    Given a user wants the ability to track a transaction
    When new information about the transaction I posted to Kafka brokers
    Then the service will consume the new information and log it to a unique place (for this sprint a text file on the container).

  @US980171
  @2018.PI01
  Scenario: US980171 - [Continued] (Retry) Build retry microservice mechanism
    Given the downstream services will need to listen to api calls, a
    Then an exposed service will need to be created of allow data to the downstream services.

  @Transaction_Mgmt
  @US1007825
  @2018.PI01
  Scenario: US1007825 - (Retry) Build retry service
    Given that a service call fails to a downstream system
    When we need to retry the call in an hour
    Then the retry service will have the ability to store which service, topic, and offset failed
    And will be able to send information needed for a retry to the failed service
    And do so every hour until successful

  @US1055436
  @2018.PI01
  Scenario: US1055436 - (Retry) Re-write Retry Service in Spring
    Given the retry mechanism is currently not written in Spring Framework
    Then a developer will have to re-write the retry mechanism in Spring Framework.

