# Last updated on 
@Non_MVP
@F184553
Feature: F184553 - Exari EM - Migrate ACO

  @US1098130
  Scenario: US1098130 - Migrate Examiner MPINs
    Given I am a User with access to maintain Entity information
    When I need to maintain an MPIN that was located in the Examiner system
    Then I maintain the MPIN in the Entity Management Solution
    And the appropriate timelines for the MPIN are in the Entity Management Solution

  @US1098133
  Scenario: US1098133 - Establish Naming Convention
    Given I am a User with access to maintain Entity information
    When I name an ACO Entity in the Entity Management Solution
    Then I must use the official Contract name of the Entity

  @US1098134
  Scenario: US1098134 - Establish Update and Maintenance Process
    Given I am a User with access to maintain Entity information
    When I want to view and maintain ACOs previously located in Examiner
    Then I can view and maintain ACOs in the Entity Management Solution

  @US1098129
  Scenario: US1098129 - Migrate Active Post Deal Examiner Rosters
    Given I am a User with access to maintain Entity information
    When I need to view or maintain an Active Post-Deal Roster that was located in the Examiner system
    Then I maintain the Active Post-Deal Roster in the Entity Management Solution

