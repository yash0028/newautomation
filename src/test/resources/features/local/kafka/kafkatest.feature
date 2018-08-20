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
      | 200        | true             | true                 | 10          | 50000           |
      | 5          | true             | true                 | 100         | 50000           |
      | 10         | true             | true                 | 100         | 50000           |
      | 20         | true             | true                 | 100         | 50000           |
      | 50         | true             | true                 | 100         | 50000           |
      | 100        | true             | true                 | 100         | 50000           |
      | 200        | true             | true                 | 100         | 50000           |
      | 5          | true             | true                 | 200         | 50000           |
      | 10         | true             | true                 | 200         | 50000           |
      | 20         | true             | true                 | 200         | 50000           |
      | 50         | true             | true                 | 200         | 50000           |
      | 100        | true             | true                 | 200         | 50000           |
      | 200        | true             | true                 | 200         | 50000           |

  @Events
  Scenario Outline: Successful Events
    Given I build a payload with "<eventCount>" "<successfulDomain>" "<successfulDownstream>" "<messageSize>"
    When I send the payload
    And I wait 30 seconds for the result
    Then I get the result with more than "<expectedSuccess>" successful events
    Examples:clear
      | eventCount | successfulDomain | successfulDownstream | messageSize | expectedSuccess |
      | 5          | true             | true                 | 5           | 5               |
      | 10         | true             | true                 | 10          | 10              |
      | 5          | true             | true                 | 10          | 5               |
      | 10         | true             | true                 | 10          | 10              |
      | 20         | true             | true                 | 10          | 20              |
      | 50         | true             | true                 | 10          | 50              |
      | 100        | true             | true                 | 10          | 100             |
      | 200        | true             | true                 | 10          | 200             |
      | 5          | true             | true                 | 100         | 5               |
      | 10         | true             | true                 | 100         | 10              |
      | 20         | true             | true                 | 100         | 20              |
      | 50         | true             | true                 | 100         | 50              |
      | 100        | true             | true                 | 100         | 100             |
      | 200        | true             | true                 | 100         | 200             |
      | 5          | true             | true                 | 200         | 5               |
      | 10         | true             | true                 | 200         | 10              |
      | 20         | true             | true                 | 200         | 20              |
      | 50         | true             | true                 | 200         | 50              |
      | 100        | true             | true                 | 200         | 100             |
      | 200        | true             | true                 | 200         | 200             |

  @Events
  Scenario Outline: Total Events
    Given I build a payload with "<eventCount>" "<successfulDomain>" "<successfulDownstream>" "<messageSize>"
    When I send the payload
    And I wait 30 seconds for the result
    Then I get the result with more than "<expectedTotal>" total events
    Examples:
      | eventCount | successfulDomain | successfulDownstream | messageSize | expectedTotal |
      | 5          | true             | true                 | 5           | 5             |
      | 10         | true             | true                 | 10          | 10            |
      | 5          | true             | true                 | 10          | 5             |
      | 10         | true             | true                 | 10          | 10            |
      | 20         | true             | true                 | 10          | 20            |
      | 50         | true             | true                 | 10          | 50            |
      | 100        | true             | true                 | 10          | 100           |
      | 200        | true             | true                 | 10          | 200           |
      | 5          | true             | true                 | 100         | 5             |
      | 10         | true             | true                 | 100         | 10            |
      | 20         | true             | true                 | 100         | 20            |
      | 50         | true             | true                 | 100         | 50            |
      | 100        | true             | true                 | 100         | 100           |
      | 200        | true             | true                 | 100         | 200           |
      | 5          | true             | true                 | 200         | 5             |
      | 10         | true             | true                 | 200         | 10            |
      | 20         | true             | true                 | 200         | 20            |
      | 50         | true             | true                 | 200         | 50            |
      | 100        | true             | true                 | 200         | 100           |
      | 200        | true             | true                 | 200         | 200           |

  @Domain
  Scenario Outline: Domain Failure
    Given I build a payload with "<eventCount>" "<successfulDomain>" "<successfulDownstream>" "<messageSize>"
    When I send the payload
    And I wait 30 seconds for the result
    Then I get the result with no more than "<expectedTotal>" total events
    Examples:
      | eventCount | successfulDomain | successfulDownstream | messageSize | expectedTotal |
      | 5          | false            | true                 | 5           | 0             |
      | 10         | false            | true                 | 10          | 0             |
      | 5          | false            | true                 | 10          | 0             |
      | 10         | false            | true                 | 10          | 0             |
      | 20         | false            | true                 | 10          | 0             |
      | 50         | false            | true                 | 10          | 0             |
      | 100        | false            | true                 | 10          | 0             |
      | 200        | false            | true                 | 10          | 0             |
      | 5          | false            | true                 | 100         | 0             |
      | 10         | false            | true                 | 100         | 0             |
      | 20         | false            | true                 | 100         | 0             |
      | 50         | false            | true                 | 100         | 0             |
      | 100        | false            | true                 | 100         | 0             |
      | 200        | false            | true                 | 100         | 0             |
      | 5          | false            | true                 | 200         | 0             |
      | 10         | false            | true                 | 200         | 0             |
      | 20         | false            | true                 | 200         | 0             |
      | 50         | false            | true                 | 200         | 0             |
      | 100        | false            | true                 | 200         | 0             |
      | 200        | false            | true                 | 200         | 0             |

  @Downstream
  Scenario Outline: Downstream Failure
    Given I build a payload with "<eventCount>" "<successfulDomain>" "<successfulDownstream>" "<messageSize>"
    When I send the payload
    And I wait 30 seconds for the result
    Then I get the result with more than "<expectedTotal>" total events
    Examples:
      | eventCount | successfulDomain | successfulDownstream | messageSize | expectedTotal |
      | 5          | true             | false                | 5           | 0             |
      | 10         | true             | false                | 10          | 0             |
      | 5          | true             | false                | 10          | 0             |
      | 10         | true             | false                | 10          | 0             |
      | 20         | true             | false                | 10          | 0             |
      | 50         | true             | false                | 10          | 0             |
      | 100        | true             | false                | 10          | 0             |
      | 200        | true             | false                | 10          | 0             |
      | 5          | true             | false                | 100         | 0             |
      | 10         | true             | false                | 100         | 0             |
      | 20         | true             | false                | 100         | 0             |
      | 50         | true             | false                | 100         | 0             |
      | 100        | true             | false                | 100         | 0             |
      | 200        | true             | false                | 100         | 0             |
      | 5          | true             | false                | 200         | 0             |
      | 10         | true             | false                | 200         | 0             |
      | 20         | true             | false                | 200         | 0             |
      | 50         | true             | false                | 200         | 0             |
      | 100        | true             | false                | 200         | 0             |
      | 200        | true             | false                | 200         | 0             |


