# Last updated on 
@EXARI-11249
@EXARI-11267
@CLM_UAT
@US1089942
@releaseUnknown
@iterationUnknown
Feature: US1089942 - Set Effective Date - Identifier

  @TC565781
  @Automated
  @Functional
  @EXARI-11249
  @EXARI-11267
  @CLM_UAT
  Scenario: TC565781 - [RL0]
    Given I am a User with access to maintain Entity information
    When I create an Identifier
    Then I must enter Effective date
    And Effective date applies only to the Identifier
    And Effective date can be in the future or retroactive

