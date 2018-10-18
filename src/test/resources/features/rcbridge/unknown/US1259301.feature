# Last updated on
@CMD
@US1259301
@CMD2
@Priority_2
@F232444
@releaseUnknown
@iterationUnknown
Feature: US1259301 - Zip to Market table microservice

  @TC565223
  @Automated
  @Functional
  @CMD
  @US1259301
  Scenario: TC565223 - [RL1]
    Given a user queries the table
    When the query response result includes more than one record
    Then the response includes all records that matched

  @TC565222
  @Automated
  @Functional
  @CMD
  @US1259301
  Scenario: TC565222 - [RL0]
    Given a user needs to query the table
    When the user provides ZipCd
    Then the query response provides the most recent record version attributes data

