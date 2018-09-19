# Last updated on 
@US1080320
Feature: US1080320 - Metrics forwarding

  @TC565864
  @Automated
  @Functional
  Scenario: TC565864 - [RL0]
    Given A service capable of publishing metrics is deployed
    When The service performs an operation, it sends statics to Splunk
    Then The metrics are recorded and aggregated, available In a dashboard for visualization

