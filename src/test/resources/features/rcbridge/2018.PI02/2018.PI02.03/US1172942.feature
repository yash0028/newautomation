# Last updated on 
@CLM_UAT
@US1172942
@2018.PI02
@2018.PI02.03
@MVP
@PI02_Top3
@Plus
@Parity
@releasePast
@iterationPast
Feature: US1172942 - [Unfinished] Benchmarking & Acceptance Testing

  @TC605436
  @Manual
  @Functional
  @CLM_UAT
  Scenario: TC605436 - [RL2]
    Given the approval coordinator micro service is created,
    When I send a payload to the micro service,
    Then I will see the latency of the response,
    And I will see how the consumer micro service performs.

  @TC605434
  @Manual
  @Functional
  @CLM_UAT
  Scenario: TC605434 - [RL0]
    Given the transaction state micro service is created,
    When I send a payload to the micro service,
    Then I will see the latency of the response,
    And I will see how the consumer micro service performs.

  @TC605435
  @Manual
  @Functional
  @CLM_UAT
  Scenario: TC605435 - [RL1]
    Given the transaction coordinator micro service is created,
    When I send a payload to the micro service,
    Then I will see the latency of the response,
    And I will see how the consumer micro service performs.

