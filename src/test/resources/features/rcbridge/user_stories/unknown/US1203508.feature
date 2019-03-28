# Last updated on 
@US1203508
@releaseUnknown
@iterationUnknown
Feature: US1203508 - Transaction scoped key-value store (Resource Store)

  @TC701698
  @Manual
  @Functional
  Scenario: TC701698 - [RL0]
    Given A microservice uses the Kafka-Client-Starter library to consume or produce business events
    When This resource store library is included in the microservice
    Then ResourceStore implementation is auto-wired via Spring-Boot auto-configuration

  @TC701713
  @Manual
  @Functional
  Scenario: TC701713 - [RL1]
    Given A microservice uses the Kafka-Client-Starter library to consume or produce business events
    And This resource store library is included in the microservice
    When A resource is added to the business event
    Then The resources is stored in the "kv" location

  @TC701720
  @Manual
  @Functional
  Scenario: TC701720 - [RL2]
    Given A microservice uses the Kafka-Client-Starter library to consume or produce business events
    And This resource store library is included in the microservice
    When A resource is removed from the business event
    Then The resources is deleted from the "kv" location

  @TC701722
  @Manual
  @Functional
  Scenario: TC701722 - [RL3]
    Given A microservice uses the Kafka-Client-Starter library to consume or produce business events
    And This resource store library is included in the microservice
    And A business event contains a resource that is offloaded to the "kv" location
    When The business event resource is accessed via it's ResourceContext
    Then The resources is loaded from the "kv" location

  @TC701724
  @Manual
  @Functional
  Scenario: TC701724 - [RL4]
    Given A microservice uses the Kafka-Client-Starter library to consume or produce business events
    And This resource store library is included in the microservice
    And A business event contains a resource that is offloaded to the "kv" location
    When The business event resource is accessed via it's ResourceContext
    And The business event resource is updated via it's ResourceContext
    Then The resources is stored in the "kv" location

