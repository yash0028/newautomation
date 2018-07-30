# Last updated on 2018-07-10T15:36:14.190Z
@Non_MVP
Feature: F184553 - Exari EM - Migrate ACO

  Scenario: US1098130
    Given I am a User with access to maintain Entity information
    When I need to maintain an MPIN that was located in the Examiner system
    Then I maintain the MPIN in the Entity Management Solution
    And the appropriate timelines for the MPIN are in the Entity Management Solution

  Scenario: US1098133
    Given I am a User with access to maintain Entity information
    When I name an ACO Entity in the Entity Management Solution
    Then I must use the official Contract name of the Entity

  Scenario: US1098134
    Given I am a User with access to maintain Entity information
    When I want to view and maintain ACOs previously located in Examiner
    Then I can view and maintain ACOs in the Entity Management Solution

  Scenario: US1098129
    Given I am a User with access to maintain Entity information
    When I need to view or maintain an Active Post-Deal Roster that was located in the Examiner system
    Then I maintain the Active Post-Deal Roster in the Entity Management Solution

