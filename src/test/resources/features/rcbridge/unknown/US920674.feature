# Last updated on 
@MVP
@CLM_UAT
@EXARI-11274
@US920674
@MVP
@Plus
@Priority_1
@releaseUnknown
@iterationUnknown
Feature: US920674 - Perform Search by Active Entities

  @TC565751
  @Automated
  @Functional
  @MVP
  @CLM_UAT
  @EXARI-11274
  Scenario: TC565751 - [RL0]
    Given I am a User with access to view and maintain Entity information
    When I want to find an Active Entity
    Then I can limit my Entity search to include only Active Entities
    And the system returns only Active Entities

