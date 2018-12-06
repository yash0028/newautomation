# Last updated on 
@MVP
@CLM_UAT
@EXARI-11274
@US858715
@MVP
@Plus
@Priority_1
@releaseUnknown
@iterationUnknown
Feature: US858715 - Search by Identifier

  @TC565084
  @Automated
  @Functional
  @MVP
  @CLM_UAT
  @EXARI-11274
  Scenario: TC565084 - [RL0]
    Given I am a User with access to view and maintain Entity information
    When I want to search for an Identifier or all Entities related to an Identifier
    Then I can search by Identifier
    And the system displays the Identifier record first and all Entities related to that Identifier

