# Last updated on 
@US1323258
@releaseUnknown
@iterationUnknown
Feature: US1323258 - Contract Configuration Service - Configuration Details

  @TC579703
  @Manual
  @Functional
  Scenario: TC579703 - [RL0]
    Given a contract configuration (OCM) record exists
    When an authorized user needs information contained in the OCM record
    Then a service is available to interrogate the OCM record

  @TC581719
  @Manual
  @Functional
  Scenario: TC581719 - [RL1]
    Given the contract configuration service is available
    When an authorized user needs information contained in the OCM record
    And the user provides the required inputs necessary
    And the contract configuration does not locate a contract configuration record
    Then the contract configuration details service provides the response

  @TC581720
  @Manual
  @Functional
  Scenario: TC581720 - [RL2]
    Given the contract configuration service is available
    When an authorized user needs information contained in the OCM record
    And the user DOES NOT provide the required inputs necessary
    Then the contract configuration details service DOES NOT provide the response
    And a message returned stating required inputs required

  @TC581721
  @Manual
  @Functional
  Scenario: TC581721 - [RL3]
    Given the contract configuration service is available
    When an authorized user needs information contained in the OCM record
    And the user provides the required inputs necessary
    And the contract configuration does not locate a contract configuration record
    Then the contract configuration details service DOES NOT provide the response
    And a message returned stating contract record not found

