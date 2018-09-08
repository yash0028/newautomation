# Last updated on 
@MVP
@EXARI-11267
@CLM_UAT
@US955775
Feature: US955775 - Set Inactivation Date - Identifier

  @TC565062
  @Automated
  @Functional
  Scenario: TC565062 - [RL0]
    Given I am a User with access to manage Entity information
    When I need to expire an Identifier relationship with an Entity
    Then I must enter an expiration date for the Identifier
    And Inactivation date applies only to the Identifier relationship with the Entity
    And Inactivation date can be in the future or retroactive
    And the Entity retains the effective and end dates for when it was in an active relationship with the Identifier
    And the Identifier retains the effective and end dates for when it was in an active relationship with the Entity

