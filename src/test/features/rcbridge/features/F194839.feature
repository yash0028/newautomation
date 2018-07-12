# Last updated on 2018-07-11T16:50:22.831Z

Feature: F194839 - CLM DevOps PI0.2

  @2018.PI03
  Scenario: US1080317
    Given A service is deployed
    When A log message is written
    Then The log message is send to the central log aggregation
    And The log message is available in the log dashboard

  @2018.PI03
  Scenario: US1080320
    Given A service capable of publishing metrics is deployed
    When The service performs an operation, it sends statics to Splunk
    Then The metrics are recorded and aggregated, available In a dashboard for visualization

  @2018.PI02
  Scenario: US1159428::0
    Given that the job is running
    When there is an old replication controller
    Then the job will delete it within a 1 hour window

  @2018.PI02
  Scenario: US1159428::1
    Given that the job is running
    When there is an old failed pod
    Then the job will delete it within a 1 hour window

  @2018.PI02
  Scenario: US1172701
    Given a user wants to test a CLM service,
    When the user hits the stage layer 7 proxy,
    Then they will get a consistent response.

  @2018.PI03
  Scenario: US1078496
    Given I am a developer,
    When I kick off a pipeline build for a service with Dynatrace needed,
    Then my docker image is built with a Dynatrace layer that can forward data to nonprod Dynatrace environment

  @2018.PI03
  Scenario: US1078501
    Given Kafka is running
    When Kafka is updating it's JMX metrics
    Then The metrics are sent to Splunk for metrics aggregation and available in the metrics dashboard

