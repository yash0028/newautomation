# Last updated on 
@MVP
@CLM_UAT
@US948350
@MVP
@Plus
@Priority_1
@F154296
@releaseUnknown
@iterationUnknown
Feature: US948350 - Search Multiple Criteria

  @TC565597
  @Automated
  @Functional
  @MVP
  @CLM_UAT
  @US948350
  Scenario: TC565597 - [RL0]
    Given I am a User with access to view or maintain Entity information
    When I want to find an Entity to view or maintain
    Then I can search using multiple data points
    And the solution displays Entity records matching my search criteria
    And Results display with best match presented first

