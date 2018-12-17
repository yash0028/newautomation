# Last updated on 
@EXARI-11267
@CLM_UAT
@US1089506
@MVP
@Priority_3
@releaseUnknown
@iterationUnknown
Feature: US1089506 - Update Entity Alternate Name

  @TC564910
  @Automated
  @Functional
  @EXARI-11267
  @CLM_UAT
  Scenario: TC564910 - [RL0]
    Given I am a User with access to maintain Entity information
    When I need to update an Entity Alternate Name
    Then I have the ability to expire the current Entity Alternate Name
    And I have the ability to enter a new Entity Alternate Name

