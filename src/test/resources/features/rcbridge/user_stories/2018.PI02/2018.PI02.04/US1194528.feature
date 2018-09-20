# Last updated on 
@CLM_UAT
@US1194528
@2018.PI02
@2018.PI02.04
Feature: US1194528 - [Unfinished] [Continued] Benchmarking & Acceptance Testing

  @TC565920
  @Automated
  @Functional
  Scenario: TC565920 - [RL2]
    Given the approval coordinator micro service is created,
    When I send a payload to the micro service,
    Then I will see the latency of the response,
    And I will see how the consumer micro service performs.

  @TC565919
  @Automated
  @Functional
  Scenario: TC565919 - [RL1]
    Given the transaction coordinator micro service is created,
    When I send a payload to the micro service,
    Then I will see the latency of the response,
    And I will see how the consumer micro service performs.

  @TC565918
  @Automated
  @Functional
  Scenario: TC565918 - [RL0]
    Given the transaction state micro service is created,
    When I send a payload to the micro service,
    Then I will see the latency of the response,
    And I will see how the consumer micro service performs.

