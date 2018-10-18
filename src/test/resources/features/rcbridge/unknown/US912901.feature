# Last updated on
@MVP
@EXARI-11267
@CLM_UAT
@US912901
@MVP
@Plus
@Priority_1
@F183266
@releaseUnknown
@iterationUnknown
Feature: US912901 - Inactivate Alternate Name/Alias

  @TC565377
  @Automated
  @Functional
  @MVP
  @EXARI-11267
  @CLM_UAT
  @US912901
  Scenario: TC565377 - [RL0]
    Given I am a User with access to maintain Entity information
    When I need to inactivate an Alternate Name listed on an Entity
    Then I can inactivate the Alternate Name for an Entity
    And the updated Entity enters the approval process workflow

