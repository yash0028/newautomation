# Last updated on
@MVP
@CLM_UAT
@US1202994
@MVP
@Plus
@Priority_2
@F198810
@releaseUnknown
@iterationUnknown
Feature: US1202994 - Export Tax IDs

  @TC565157
  @Automated
  @Functional
  @MVP
  @CLM_UAT
  @US1202994
  Scenario: TC565157 - [RL0]
    Given I am a User with access to maintain Entity information
    When I want to export a list of Tax IDs
    Then I can export Tax IDs by one or more Markets
    And I can export Tax IDs by one or more Entities
    And I can export by one or more Regions
    And I can export by one or more States
    And I can export by one or more Countries

