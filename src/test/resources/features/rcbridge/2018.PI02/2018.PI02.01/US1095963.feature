# Last updated on 
@PES
@US1095963
@2018.PI02
@2018.PI02.01
@PI02_Top3
@AUTO-PES
@PES
@Exari_Microservice
@MVP
@CLM_Exari
@Parity
@releasePast
@iterationPast
Feature: US1095963 - Multiple Results (PES)

  @TC565899
  @Automated
  @Functional
  @PES
  Scenario: TC565899 - [RL0]
    Given a user has searched for provider
    When there are multiple results
    Then I see a list of those results.
    And I can select one to read more details.

