# Last updated on 
@MVP
@Siraj
@US861033
@2018.PI03
@2018.PI03.05
@MVP
@Priority_1
@Parity
@Examiner
@F171571
@releasePast
@iterationPast
Feature: US861033 - [Continued][Continued] Integrate CLM with Examiner (Continued)

  @TC564592
  @Automated
  @Functional
  @MVP
  @Siraj
  @US861033
  @2018.PI03
  @2018.PI03.05
  Scenario Outline: TC564592 - [RL1]
    Given A contract inquiry request from PIC or Examiner
    When A REST Service call is made with invalid data <inputData>
    Then The service will return an error <responseCode>
    Examples:
      | inputData      | responseCode |
      | "124319,12389" | "1"          |
      | "123,456,789"  | "2"          |

  @TC564591
  @Automated
  @Functional
  @MVP
  @Siraj
  @US861033
  @2018.PI03
  @2018.PI03.05
  Scenario: TC564591 - [RL0] Test case
    Given A contract inquiry request from PIC or Examiner
    When A REST Service call is made
    Then The contract data is sent back to PIC or Examiner

  @TC564593
  @Automated
  @Functional
  @MVP
  @Siraj
  @US861033
  @2018.PI03
  @2018.PI03.05
  Scenario: TC564593 - [RL2]
    Given A contract request from PIC or Examiner
    When The REST service is unavailable
    Then An server error will be returned

