# Last updated on 
@CLM_UAT
@US1194528
@2018.PI02
@2018.PI02.04
@MVP
@PI02_Top3
@Plus
@Parity
@F175417
@releasePast
@iterationPast
Feature: US1194528 - [Unfinished] [Continued] Benchmarking & Acceptance Testing

  @TC605391
  @Manual
  @Functional
  @CLM_UAT
  @US1194528
  @2018.PI02
  @2018.PI02.04
  Scenario: TC605391 - [RL1]
    Given the transaction coordinator micro service is created,
    When I send a payload to the micro service,
    Then I will see the latency of the response,
    And I will see how the consumer micro service performs.

  @TC605392
  @Manual
  @Functional
  @CLM_UAT
  @US1194528
  @2018.PI02
  @2018.PI02.04
  Scenario: TC605392 - [RL2]
    Given the approval coordinator micro service is created,
    When I send a payload to the micro service,
    Then I will see the latency of the response,
    And I will see how the consumer micro service performs.

  @TC605390
  @Manual
  @Functional
  @CLM_UAT
  @US1194528
  @2018.PI02
  @2018.PI02.04
  Scenario: TC605390 - [RL0]
    Given the transaction state micro service is created,
    When I send a payload to the micro service,
    Then I will see the latency of the response,
    And I will see how the consumer micro service performs.

