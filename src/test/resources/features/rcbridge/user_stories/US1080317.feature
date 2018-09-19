# Last updated on 
@US1080317
Feature: US1080317 - Log forwarding

  @TC565777
  @Automated
  @Functional
  Scenario: TC565777 - [RL0]
    Given A service is deployed
    When A log message is written
    Then The log message is send to the central log aggregation
    And The log message is available in the log dashboard

