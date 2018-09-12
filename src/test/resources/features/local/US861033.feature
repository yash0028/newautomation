# Last updated on 
@US861033
Feature: US861033 - CMD Dashboard buttons

  @Automated
  @Functional
  Scenario Outline: TC565940 - [RL0]
    Given A contract inquiry request from PIC or Examiner
    When A REST Service call is made with invalid data <inputData>
    Then The service will return an error <responseCode>

    Examples:
    |inputData|responseCode|
    |"124319,12389"|"1"|
    |"123,456,789"|"2"|

