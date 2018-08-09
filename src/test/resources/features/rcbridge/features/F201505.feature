# Last updated on 2018-08-07T20:43:37.019Z

Feature: F201505 - CLM DevOps PI03

  @2018.PI03
  Scenario: US1080317
    Given A service is deployed
    When A log message is written
    Then The log message is send to the central log aggregation
    And The log message is available in the log dashboard

  @2018.PI03
  Scenario: US1168431
    Given there is a pain point,
    When at any step in the development process,
    Then I want to automate and streamline the process to alleviate pain points.

  @2018.PI03
  Scenario: US1151078
    Given a developer wants to deploy a service
    When the developer checks code in
    Then the CICD pipeline will automatically run through desired processes

  @2018.PI03
  Scenario: US1239950
    Given a service is exposed through layer 7,
    When multiple requests come into that service,
    Then the requests are spread out between ELR and CTC datacenters

  @RCBridge
  @2018.PI03
  Scenario: US1176975::0
    # Enhance Test Case Link
    Given a user story artifact with 2 valid acceptance criteria
    And that user story does not have test cases
    When rcbridge runs
    Then 2 test cases are created
    And the first test case is called RCLink 1
    And the second test case is called RCLink 2

  @RCBridge
  @2018.PI03
  Scenario: US1176975::1
    Given a user story artifact with 2 valid acceptance criteria
    And that user story has 2 outdated RCLink test cases
    When rcbridge runs
    Then the RCLink test cases are updated
    Examples:
      | data A | data B |
      | A  | B  |
      | AA | BB |


  @2018.PI03
  Scenario: US1080320
    Given A service capable of publishing metrics is deployed
    When The service performs an operation, it sends statics to Splunk
    Then The metrics are recorded and aggregated, available In a dashboard for visualization

  @2018.PI03
  Scenario: US1181927
    Given the need for acceptance testing in the pipeline
    Then we need to implement acceptance testing into the pipeline

  @2018.PI03
  Scenario: US1078501
    Given Kafka is running
    When Kafka is updating it's JMX metrics
    Then The metrics are sent to Splunk for metrics aggregation and available in the metrics dashboard

