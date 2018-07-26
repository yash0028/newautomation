# Last updated on 2018-05-10T15:15:06.605Z
@MVP
Feature: F161919 - Manage Distributed Transactions - user can review

  @2018.PI01
  @2018.PI01.04
  Scenario: US1058710
    Given the CLM project will use a dashboarding tool to visualize and report metrics
    Then the development team will investigate Splunk since it is Optum's approved tool for dashboarding.

  @Transaction_Mgmt
  @2018.PI01
  @2018.PI01.02
  Scenario: US980176
    Given a user wants the ability to track a transaction
    When new information about the transaction I posted to Kafka brokers
    Then the service will consume the new information and log it to a unique place (for this sprint a text file on the container).

  @2018.PI01
  @2018.PI01.03
  Scenario: US980171
    Given the downstream services will need to listen to api calls, a
    Then an exposed service will need to be created of allow data to the downstream services.

  @Transaction_Mgmt
  @2018.PI01
  @2018.PI01.02
  Scenario: US1007825
    Given that a service call fails to a downstream system
    When we need to retry the call in an hour
    Then the retry service will have the ability to store which service, topic, and offset failed
    And will be able to send information needed for a retry to the failed service
    And do so every hour until successful

  @2018.PI01
  @2018.PI01.04
  Scenario: US1055436
    Given the retry mechanism is currently not written in Spring Framework
    Then a developer will have to re-write the retry mechanism in Spring Framework.

