# Last updated on 2018-06-25T16:58:05.536Z
@KAFKA
Feature: Kafka Test Bench

  Background:
    Given I send reset command to test bench

  @Latency
  Scenario Outline: Short latency
    Given I build a payload with "<eventCount>" "<successfulDomain>" "<successfulDownstream>" "<messageSize>"
    When I send the payload
    And I wait 30 seconds for the result
    Then I get the result with an average time less than "<expectedAverage>"
    Examples:
      | eventCount | successfulDomain | successfulDownstream | messageSize | expectedAverage |
      | 5          | true             | true                 | 10          | 50000           |
      | 10         | true             | true                 | 10          | 50000           |
      | 20         | true             | true                 | 10          | 50000           |
      | 50         | true             | true                 | 10          | 50000           |
      | 100        | true             | true                 | 10          | 50000           |
      | 1000       | true             | true                 | 10          | 50000           |
      | 5          | true             | true                 | 100         | 50000           |
      | 10         | true             | true                 | 100         | 50000           |
      | 20         | true             | true                 | 100         | 50000           |
      | 50         | true             | true                 | 100         | 50000           |
      | 100        | true             | true                 | 100         | 50000           |
      | 1000       | true             | true                 | 100         | 50000           |
      | 5          | true             | true                 | 1000        | 50000           |
      | 10         | true             | true                 | 1000        | 50000           |
      | 20         | true             | true                 | 1000        | 50000           |
      | 50         | true             | true                 | 1000        | 50000           |
      | 100        | true             | true                 | 1000        | 50000           |
      | 1000       | true             | true                 | 1000        | 50000           |

  @Events
  Scenario Outline: Successful Events
    Given I build a payload with "<eventCount>" "<successfulDomain>" "<successfulDownstream>" "<messageSize>"
    When I send the payload
    And I wait 30 seconds for the result
    Then I get the result with more than "<expectedSuccess>" successful events
    Examples:
      | eventCount | successfulDomain | successfulDownstream | messageSize | expectedSuccess |
      | 5          | true             | true                 | 5           | 4               |
      | 10         | true             | true                 | 10          | 9               |

  @Events
  Scenario Outline: Total Events
    Given I build a payload with "<eventCount>" "<successfulDomain>" "<successfulDownstream>" "<messageSize>"
    When I send the payload
    And I wait 30 seconds for the result
    Then I get the result with more than "<expectedTotal>" total events
    Examples:
      | eventCount | successfulDomain | successfulDownstream | messageSize | expectedTotal |
      | 5          | true             | true                 | 5           | 4             |
      | 10         | true             | true                 | 10          | 9             |