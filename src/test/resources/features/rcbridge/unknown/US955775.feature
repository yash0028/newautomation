# Last updated on 
@EXARI-11267
@CLM_UAT
@US955775
@releaseUnknown
@iterationUnknown
Feature: US955775 - Set Inactivation Date - Identifier

  @TC565062
  @Automated
  @Functional
  @EXARI-11267
  @CLM_UAT
  Scenario: TC565062 - [RL0]
    Given I am a User with access to manage Entity information
    When I need to expire an Identifier
    Then I must enter an expiration date for the Identifier
    And Inactivation date applies only to the Identifier
    And Inactivation date can be in the future or retroactive

