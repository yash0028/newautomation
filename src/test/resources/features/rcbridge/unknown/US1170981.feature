# Last updated on 
@MVP
@EXARI-11267
@EXARI-11249
@CLM_UAT
@US1170981
@MVP
@Plus
@Priority_1
@F198722
@releaseUnknown
@iterationUnknown
Feature: US1170981 - Reactivate Entity

  @TC565212
  @Automated
  @Functional
  @MVP
  @EXARI-11267
  @EXARI-11249
  @CLM_UAT
  @US1170981
  Scenario: TC565212 - [RL0]
    Given I am a User with access to maintain Entity information
    When I want to reactivate an inactive Entity
    Then I can search for the Entity
    And I can reactivate the Entity

