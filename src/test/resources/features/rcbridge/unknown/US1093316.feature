# Last updated on 
@MVP
@CLM_UAT
@EXARI-11274
@US1093316
@MVP
@Plus
@Priority_1
@releaseUnknown
@iterationUnknown
Feature: US1093316 - Search Identifier

  @TC565829
  @Automated
  @Functional
  @MVP
  @CLM_UAT
  @EXARI-11274
  Scenario: TC565829 - [RL0]
    Given I am a User with access to view or maintain Entity information
    When I want to find an Entity to view or maintain
    Then I can search by Identifier
    And the solution displays Entity records matching my search criteria
    And Results display with best match presented first

