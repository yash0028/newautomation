# Last updated on 
@PES
@US1095963
@2018.PI02
@2018.PI02.01
Feature: US1095963 - Multiple Results (PES)

  @TC565899
  @Automated
  @Functional
  Scenario: TC565899 - [RL0]
    Given a user has searched for provider
    When there are multiple results
    Then I see a list of those results.
    And I can select one to read more details.

