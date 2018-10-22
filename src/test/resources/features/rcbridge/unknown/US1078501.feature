# Last updated on 
@US1078501
@F226404
@releaseUnknown
@iterationUnknown
Feature: US1078501 - JMX Trans for Kafka

  @TC565404
  @Automated
  @Functional
  @US1078501
  Scenario: TC565404 - [RL0]
    Given Kafka is running
    When Kafka is updating it's JMX metrics
    Then The metrics are sent to Splunk for metrics aggregation and available in the metrics dashboard

