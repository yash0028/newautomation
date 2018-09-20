# Last updated on 
@CLM_UAT
@US1172942
@2018.PI02
@2018.PI02.03
Feature: US1172942 - [Unfinished] Benchmarking & Acceptance Testing

  @TC565728
  @Automated
  @Functional
  Scenario: TC565728 - [RL2]
    Given the approval coordinator micro service is created,
    When I send a payload to the micro service,
    Then I will see the latency of the response,
    And I will see how the consumer micro service performs.

  @TC565727
  @Automated
  @Functional
  Scenario: TC565727 - [RL1]
    Given the transaction coordinator micro service is created,
    When I send a payload to the micro service,
    Then I will see the latency of the response,
    And I will see how the consumer micro service performs.

  @TC565726
  @Automated
  @Functional
  Scenario: TC565726 - [RL0]
    Given the transaction state micro service is created,
    When I send a payload to the micro service,
    Then I will see the latency of the response,
    And I will see how the consumer micro service performs.

