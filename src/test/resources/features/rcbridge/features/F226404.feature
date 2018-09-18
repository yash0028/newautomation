# Last updated on 
@F226404
Feature: F226404 - CLM DevOps PI04

  @US1080317
  @2018.PI03
  Scenario: US1080317 - Log forwarding
    Given A service is deployed
    When A log message is written
    Then The log message is send to the central log aggregation
    And The log message is available in the log dashboard

  @US1080320
  @2018.PI03
  Scenario: US1080320 - Metrics forwarding
    Given A service capable of publishing metrics is deployed
    When The service performs an operation, it sends statics to Splunk
    Then The metrics are recorded and aggregated, available In a dashboard for visualization

  @US1078501
  @2018.PI03
  Scenario: US1078501 - JMX Trans for Kafka
    Given Kafka is running
    When Kafka is updating it's JMX metrics
    Then The metrics are sent to Splunk for metrics aggregation and available in the metrics dashboard

