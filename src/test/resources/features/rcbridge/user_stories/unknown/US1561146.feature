# Last updated on 
@US1561146
@releaseUnknown
@iterationUnknown
Feature: US1561146 - Reconfigure the Kafka cluster to support Mass Update and Flow-Based transactons (Pending Delete)

  @TC720663
  @Manual
  @Functional
  Scenario: TC720663 - [RL0]
    Given separate infrastructure exists to support Mass processing
    When the clusters and procurement of the clusters has occurred
    Then the provisioning of the clusters or nodes is complete
    And the clusters are available in each of the environments
    And demonstrate that the Kafka Cluster can support N threads concurrently processing events

