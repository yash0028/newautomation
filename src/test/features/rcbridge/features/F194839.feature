# Last updated on 2018-06-07T19:48:51.950Z

Feature: F194839 - CLM DevOps

  @2018.PI03
  Scenario: US1080317
    Given A service is deployed
    When A log message is written
    Then The log message is send to the central log aggregation
    Then And The log message is available in the log dashboard

  @2018.PI03
  Scenario: US1080320
    Given A service capable of publishing metrics is deployed
    When The service performs an operation, it sends statics to Splunk
    Then The metrics are recorded and aggregated, available In a dashboard for visualization

  @2018.PI03
  Scenario: US1078496
    Given Dynatrace is not deployed to the environment
    When The Dynatrace image is deployed
    Then Dynatrace is configured and available in the environment

  @2018.PI03
  Scenario: US1078501
    Given Kafka is running
    When Kafka is updating it's JMX metrics
    Then The metrics are sent to Splunk for metrics aggregation and available in the metrics dashboard

