# Last updated on 2018-06-21T20:26:40.607Z
@MVP
@Plus
@Priority_1
Feature: F198722 - Reactivate Entity

  @MVP
  @EXARI-11273
  @2018.PI03
  Scenario: US1170984
    Given I am the Entity Management Solution
    When a User reactivates an Entity
    Then I capture the time and date of when the User reactivated the Entity
    And I capture the User who performed the change

  @MVP
  @CLM_UAT
  @2018.PI03
  Scenario: US1170982
    Given I am the Entity Management Solution
    When an Entity is reactivated
    Then all relationships previously associated with that Entity are visible
    And all relationships remain inactive until updated by a User

  @MVP
  @EXARI-11267
  @EXARI-11249
  @CLM_UAT
  @2018.PI03
  Scenario: US1170981
    Given I am a User with access to maintain Entity information
    When I want to reactivate an inactive Entity
    Then I can search for the Entity
    And I can reactivate the Entity

