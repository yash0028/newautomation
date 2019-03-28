# Last updated on 
@US1485887
@2018.PI05
@2018.PI05.04
@releasePast
@iterationPast
Feature: US1485887 - [Continued] [Continued] COSMOS validator message catalog handling

  @TC743429
  @Manual
  @Functional
  Scenario: TC743429 - [RL0]
    Given the Cosmos validator service is running and the catalog messages are implemented
    When the contract is initiated from Exari and the Cosmos validator service reported issues
    Then the messages with 300 code with failure to be displayed in CMD with properly formatted.
    ####
    Given the Cosmos validator service is running and the catalog messages are implemented
    When the contract is initiated from Exari and the Cosmos validator service reported no issues
    Then the messages with 302 code with success message to be displayed in CMD with properly formatted.

