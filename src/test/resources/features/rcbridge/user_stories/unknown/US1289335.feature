# Last updated on 
@RC_invalid
@US1289335
@releaseUnknown
@iterationUnknown
Feature: US1289335 - View multi-Contract Config Summary web page

  @TC616423
  @Manual
  @Functional
  @RC_invalid
  Scenario: TC616423 - [RL0]
    Given an Exari contract is created
    When a contract is executed in Exari
    Then a contract configuration overview view of the CMD record is created

  @TC616424
  @Manual
  @Functional
  @RC_invalid
  Scenario: TC616424 - [RL1]
    Given an CMD record exists
    When a contract configuration overview inquiry request is made
    Then a contract configuration overview inquiry response record is returned

