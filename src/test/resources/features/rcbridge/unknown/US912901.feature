# Last updated on 
@EXARI-11267
@CLM_UAT
@US912901
@MVP
@Plus
@releaseUnknown
@iterationUnknown
Feature: US912901 - Inactivate Alternate Name/Alias

  @TC565377
  @Automated
  @Functional
  @EXARI-11267
  @CLM_UAT
  Scenario: TC565377 - [RL0]
    Given I am a User with access to maintain Entity information
    When I need to inactivate an Alternate Name listed on an Entity
    Then I can inactivate the Alternate Name for an Entity
    And the updated Entity enters the approval process workflow

