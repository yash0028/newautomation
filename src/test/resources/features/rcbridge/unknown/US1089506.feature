# Last updated on 
@MVP
@EXARI-11267
@CLM_UAT
@US1089506
@MVP
@Plus
@Priority_1
@F183266
@releaseUnknown
@iterationUnknown
Feature: US1089506 - Update Entity Alternate Name

  @TC564910
  @Automated
  @Functional
  @MVP
  @EXARI-11267
  @CLM_UAT
  @US1089506
  Scenario: TC564910 - [RL0]
    Given I am a User with access to maintain Entity information
    When I need to update an Entity Alternate Name
    Then I have the ability to expire the current Entity Alternate Name
    And I have the ability to enter a new Entity Alternate Name

