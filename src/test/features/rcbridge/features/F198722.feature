# Last updated on 2018-06-21T17:38:54.710Z
@MVP
@Plus
@Priority_1
Feature: F198722 - Reactivate Entity

  @MVP
  @EXARI-11273
  Scenario: US1170984
    Given I am the Entity Management Solution
    When a User reactivates an Entity
    Then I capture the time and date of when the User reactivated the Entity
    And I capture the User who performed the change

  @MVP
  @CLM_UAT
  Scenario: US1170982
    Given I am the Entity Management Solution
    When an Entity is reactivated
    Then all relationships previously associated with that Entity are visible
    And all relationships remain inactive until updated by a User

  @MVP
  @EXARI-11267
  @EXARI-11249
  @CLM_UAT
  Scenario: US1170981
    Given I am a User with access to maintain Entity information
    When I want to reactivate an inactive Entity
    Then I can search for the Entity
    And I can reactivate the Entity
    And the Entity enters the approval workflow process

  @MVP
  @CLM_UAT
  Scenario: US1170983
    Given I am a User with Approval Authority
    When a User reactivates an Entity
    Then I can approve the Entity reactivation
    And the Entity becomes active in the Entity Management Solution
    And I can reject the Entity reactivation
    And the Entity remains inactive in the Entity Management Solution

