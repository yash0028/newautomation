# Last updated on 
@MVP
@Plus
@Priority_1
@F198722
Feature: F198722 - Exari EM - Reactivate Entity

  @MVP
  @EXARI-11267
  @EXARI-11249
  @CLM_UAT
  @US1193286
  Scenario: US1193286 - Capture Reason for Reactivation
    Given I am a User
    When I am reactivating an Entity
    Then I am required to provide a reason for reactivating the Entity prior to completing the reactivation

  @MVP
  @EXARI-11273
  @US1170984
  Scenario: US1170984 - Capture Timeline History
    Given I am the Entity Management Solution
    When a User reactivates an Entity
    Then I capture the time and date of when the User reactivated the Entity
    And I capture the User who performed the change

  @MVP
  @CLM_UAT
  @EXARI-11270
  @US1170982
  Scenario: US1170982 - Retained Relationships
    Given I am the Entity Management Solution
    When an Entity is reactivated
    Then all relationships previously associated with that Entity are visible
    And all relationships remain inactive until updated by a User

  @MVP
  @EXARI-11267
  @EXARI-11249
  @CLM_UAT
  @US1170981
  Scenario: US1170981 - Reactivate Entity
    Given I am a User with access to maintain Entity information
    When I want to reactivate an inactive Entity
    Then I can search for the Entity
    And I can reactivate the Entity

