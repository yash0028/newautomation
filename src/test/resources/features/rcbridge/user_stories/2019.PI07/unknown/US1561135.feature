# Last updated on 
@US1561135
@2019.PI07
@releasePresent
@iterationUnknown
Feature: US1561135 - Add duplicate Kafka topics for mass update transactions

  @TC720671
  @Manual
  @Functional
  Scenario: TC720671 - [RL0]
    Given the Kafka topics have been identified
    When the topics are needed to support Mass projects
    Then separate processing of those topics are available for Mass Projects
    And the scripts are available in each of the environments
    And the scripts setup the duplicate Kafka topics correctly in each environment
    ###
