# Last updated on 
@US1388133
@2018.PI04
@2018.PI04.03
@releaseUnknown
@iterationUnknown
Feature: US1388133 - Create health check report for lower Environments Kafka/Zookeeper servers

  @TC652721
  @Manual
  @Functional
  Scenario: TC652721 - [RL0]
    Given that system engineer deploys the script in dev & test env
    When they need to see server health check, utilization and uptime
    Then report should be triggered and send over email

