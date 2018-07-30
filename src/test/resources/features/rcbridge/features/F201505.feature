# Last updated on 2018-07-26T14:53:13.394Z

Feature: F201505 - CLM DevOps PI 03

  @2018.PI03
  Scenario: US1181927
    Given the need for acceptance testing in the pipeline
    Then we need to implement acceptance testing into the pipeline

  @2018.PI03
  Scenario: US1168431
    Given there is a pain point,
    When at any step in the development process,
    Then I want to automate and streamline the process to alleviate pain points.

  @2018.PI03
  Scenario: US1151078
    Given a developer wants to deploy a service
    When the developer checks code in
    Then the CICD pipeline will automatically run through desired processes

  @2018.PI03
  Scenario: US1239950
    Given a service is exposed through layer 7,
    When multiple requests come into that service,
    Then the requests are spread out between ELR and CTC datacenters

  @2018.PI03
  Scenario: US1176975::0
    # Enhance Test Case Link
    Given a user story artifact with 2 valid acceptance criteria
    And that user story does not have test cases
    When rcbridge runs
    Then 2 test cases are created
    And the first test case is called RCLink 1
    And the second test case is called RCLink 2

  @2018.PI03
  Scenario: US1176975::1
    Given a user story artifact with 2 valid acceptance criteria
    And that user story has 2 outdated RCLink test cases
    When rcbridge runs
    Then the RCLink test cases are updated

